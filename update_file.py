# -*- coding: utf-8 -*-
# Copyright by BlueWhale. All Rights Reserved.
""" 更新已有的文件 """
import os
import shutil
import sys
import zipfile


def get_files(input_path, result):
    """
    对目录进行深度优先遍历
    :param input_path:
    :param result:
    :return:
    """
    try:
        for file in os.listdir(input_path):
            if os.path.isdir(input_path + '/' + file):
                get_files(input_path + '/' + file, result)
            else:
                result.append(input_path + '/' + file)
    except NotADirectoryError as ex:
        print(ex.filename, ex.strerror)
        sys.exit(2)


def do_update(src, dst):
    files = []
    get_files(dst, files)
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
                        with open(file, 'wb') as ff:
                            ff.write(zf.read())
                            print(f"复制{name}<{src_path}到{file.replace(dst, '')}")
                            updated += 1
                except KeyError as e:
                    print(e)
                    os.remove(file)
                except OSError as e:
                    print(src, file)
                    print(e)
    else:
        for file in files:
            src_file = src + file.replace(dst, '')
            if os.path.isfile(src_file):
                try:
                    shutil.copyfile(src_file, file)
                    print(f"复制{src_file}到{file.replace(dst, '')}")
                    updated += 1
                except shutil.SameFileError:
                    print(src_file, file)
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
    do_update(sys.argv[1], sys.argv[2])
