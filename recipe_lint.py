import json
import os
import sys


def recipe_lint(namespace_path: str) -> None:
    """ 尝试规范和修复合成表 """
    recipes_path = f'{namespace_path}/recipes'
    for file in os.listdir(recipes_path):
        with open(recipes_path + '/' + file, 'r', encoding='utf-8') as f:
            d = json.load(f)
        if 'ingredients' in d and 'pattern' in d:
            print('warn', recipes_path + '/' + file)
        # 硬排序
        rd = {'type': d['type'], 'category': d['category']}
        for k, v in d.items():
            rd[k] = v
        json.dump(rd, open(recipes_path + '/' + file, 'w', encoding='utf-8'), ensure_ascii=False, indent=2)


if __name__ == '__main__':
    if len(sys.argv) < 2:
        print(f'{sys.argv[0]} namespace(path)')
        sys.exit(2)
    recipe_lint(sys.argv[1])
