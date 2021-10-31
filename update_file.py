# -*- coding: utf-8 -*-
# Copyright by BlueWhale. All Rights Reserved.
""" 更新已有的文件 """
import os
import shutil
import sys


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
    print(f'目标位置文件总数:{len(files)} 已更新数:{updated}')


if __name__ == '__main__':
    if len(sys.argv) < 3:
        print(f'{sys.argv[0]} src(path) dst(path)')
        sys.exit(2)
    do_update(sys.argv[1], sys.argv[2])
