import json
import os
import sys
import zipfile

from util import get_file_as_type


def iter_merge(sd: dict, dd: dict) -> bool:
    # 非常不安全，该方案仅用于原版更新无从下手时配合git使用
    result = 0
    for k, v in sd.items():
        if k in dd:
            if isinstance(v, dict):
                if isinstance(dd[k], dict):
                    result += iter_merge(v, dd[k])
                else:
                    dd[k] = v
                    result += 1
        else:
            dd[k] = v
            result += 1
    return bool(result)


def copy_new_props(src, dst):
    files = []
    get_file_as_type(dst, files, '.json')
    updated = 0
    if '!' in src:
        name, arc_path = src.split('!')
        if not os.path.isfile(name):
            print(f'{name} 文件不存在！')
            sys.exit(2)
        with zipfile.ZipFile(name, 'r') as f:
            for file in files:
                try:
                    src_path = arc_path + file.replace(dst, '')
                    with f.open(src_path, 'r') as zf:
                        sd = json.load(zf)
                        dd = json.load(open(file, 'r', encoding='utf-8'))
                        if iter_merge(sd, dd):
                            json.dump(dd, open(file, 'w', encoding='utf-8'), ensure_ascii=False, indent=2)
                            print(f"复制{name}<{src_path}到{file.replace(dst, '')}")
                            updated += 1
                except KeyError as e:
                    print(e)
                except OSError as e:
                    print(src, file)
                    print(e)
    else:
        for file in files:
            src_file = src + file.replace(dst, '')
            if os.path.isfile(src_file):
                try:
                    with open(src_file, 'r', encoding='utf-8') as zf:
                        with open(file, 'rw', encoding='utf-8') as ff:
                            sd = json.load(zf)
                            dd = json.load(ff)
                            if iter_merge(sd, dd):
                                json.dump(dd, ff, ensure_ascii=False, indent=2)
                                print(f"复制{src_file}到{file.replace(dst, '')}")
                                updated += 1
                except OSError as e:
                    print(src_file, file)
                    print(e)
            else:
                print(src_file, '不存在源中')
    print(f'目标位置文件总数:{len(files)} 已更新数:{updated}')


if __name__ == '__main__':
    if len(sys.argv) < 3:
        print(f'{sys.argv[0]} src(path) dst(path)')
        sys.exit(2)
    copy_new_props(sys.argv[1], sys.argv[2])
