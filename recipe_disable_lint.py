import os
import sys

from util import get_file_as_type


def recipes_lint(namespace_path: str) -> None:
    """ 检查被禁用的合成表是否一并禁用了配方解锁进度 """
    recipes_path = f'{namespace_path}/recipes'
    advancements_recipe_path = f'{namespace_path}/advancements/recipes'
    locked_recipe = {}
    for file in os.listdir(recipes_path):
        with open(recipes_path + '/' + file, 'r') as f:
            if '"minecraft:barrier"' in f.read():
                locked_recipe[file] = True
    ars = []
    get_file_as_type(advancements_recipe_path, ars, '.json')
    for i in range(len(ars)):
        ars[i] = os.path.basename(ars[i])
    for k, v in locked_recipe.items():
        if k not in ars:
            print(f'{k} 合成进度可能没有被禁用')


if __name__ == '__main__':
    if len(sys.argv) < 2:
        print(f'{sys.argv[0]} namespace(path)')
        sys.exit(2)
    recipes_lint(sys.argv[1])
