import json
import os
import sys
import urllib.request

import jsonschema as jsonschema


def recipe_lint(namespace_path: str) -> None:
    """ 尝试规范和修复合成表 """
    recipes_path = f'{namespace_path}/recipes'
    schema = json.loads(urllib.request.urlopen('https://json.schemastore.org/minecraft-recipe.json').read())
    for file in os.listdir(recipes_path):
        with open(recipes_path + '/' + file, 'r', encoding='utf-8') as f:
            d = json.load(f)
        try:
            jsonschema.validate(d, schema)
        except Exception as e:
            print(e)
            print('warn', recipes_path + '/' + file)
            continue
        if d['type'] == 'minecraft:crafting_shaped' and 'pattern' not in d:
            print('warn', recipes_path + '/' + file)
            continue
        if d['type'] == 'minecraft:crafting_shapeless' and 'ingredients' not in d:
            print('warn', recipes_path + '/' + file)
            continue
        # 硬排序，该方案仅临时使用
        rd = {'type': d['type'], 'category': d['category']}
        if 'group' in d:
            rd['group'] = d['group']
        if 'key' in d and 'pattern' in d:
            rd['key'] = d['key']
            rd['pattern'] = d['pattern']
        if 'result' in d:
            result = d['result']
            if isinstance(result, dict) and 'count' in result and 'item' in result:
                r = {'count': result['count'], 'item': result['item']}
                for k, v in result.items():
                    r[k] = v
                d['result'] = r
        for k, v in d.items():
            rd[k] = v
        # 过滤
        if rd['type'] != 'minecraft:smelting':
            if 'result' in rd:
                result = rd['result']
                if isinstance(result, dict):
                    if 'count' in result and result['count'] == 1:
                        result.pop('count')
                else:
                    print('Warning', file)
        json.dump(rd, open(recipes_path + '/' + file, 'w', encoding='utf-8'), ensure_ascii=False, indent=2)


if __name__ == '__main__':
    if len(sys.argv) < 2:
        print(f'{sys.argv[0]} namespace(path)')
        sys.exit(2)
    recipe_lint(sys.argv[1])
