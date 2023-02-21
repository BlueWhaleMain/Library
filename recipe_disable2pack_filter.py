import json
import os
import sys

from util import get_file_as_type


def recipe_disable2pack_filter(root_path: str, namespace_path: str) -> None:
    """ 将经典禁用方案转换为过滤方案 """
    pack_mcmeta_path = os.path.join(root_path, 'pack.mcmeta')
    if not os.path.isfile(pack_mcmeta_path):
        sys.exit(2)
    pack_mcmeta_data = None
    with open(pack_mcmeta_path, 'r', encoding='utf-8') as f:
        pack_mcmeta_data = json.load(f)
    block = []
    namespace = namespace_path.split(os.path.sep).pop()
    recipes_path = os.path.join(namespace_path, 'recipes')
    if not os.path.isdir(recipes_path):
        sys.exit(2)
    for file in os.listdir(recipes_path):
        file_path = os.path.join(recipes_path, file)
        with open(file_path, 'r', encoding='utf-8') as f:
            if '"minecraft:barrier"' not in f.read():
                continue
        np = os.path.relpath(file_path).replace(os.path.relpath(namespace_path), '').replace(os.sep, '/')[1:]
        block.append(dict(namespace=namespace, path=np))
        print('Del', file_path)
        os.remove(file_path)
    advancements_recipe_path = os.path.join(namespace_path, 'advancements', 'recipes')
    if not os.path.isdir(advancements_recipe_path):
        sys.exit(2)
    ars = []
    get_file_as_type(advancements_recipe_path, ars, '.json')
    for i in range(len(ars)):
        file_path = ars[i]
        with open(file_path, 'r', encoding='utf-8') as f:
            d = json.load(f)
            if 'requirements' not in d:
                continue
            requirements = d['requirements']
            if len(requirements) != 1:
                continue
            if len(requirements[0]) != 1:
                continue
            if requirements[0][0] != 'has_the_recipe':
                continue
        np = os.path.relpath(file_path).replace(os.path.relpath(namespace_path), '').replace(os.sep, '/')[1:]
        block.append(dict(namespace=namespace, path=np))
        print('Del', file_path)
        os.remove(file_path)
    if ars:
        pack_mcmeta_data['filter'] = dict(block=block)
        with open(pack_mcmeta_path, 'w', encoding='utf-8') as f:
            json.dump(pack_mcmeta_data, f, ensure_ascii=False, indent=3)


if __name__ == '__main__':
    if len(sys.argv) < 3:
        print(f'{sys.argv[0]} root(path) namespace(path)')
        sys.exit(2)
    recipe_disable2pack_filter(sys.argv[1], sys.argv[2])
