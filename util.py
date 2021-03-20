# -*- coding: utf-8 -*-
# Copyright by BlueWhale. All Rights Reserved.
"""
    公共方法
"""
import os
import sys

import chardet
from colorama import Fore, init

init(autoreset=True)


def get_encoding(file_name, index):
    """
    获取文件的可能字符编码
    :param file_name: 文件名
    :param index: 下标
    :return: 字符编码字符串
    """
    # 二进制方式读取，获取字节数据，检测类型
    with open(file_name, 'rb') as _f:
        if index:
            _f.seek(index)
        return chardet.detect(_f.read())['encoding']


def get_file_as_type(path, files, _type):
    """
    根据文件扩展名获取文件列表
    :param path: 路径
    :param files: 数组
    :param _type: 扩展名
    :return: 文件列表
    """
    try:
        for file_names in os.listdir(path):
            if os.path.isdir(path + '/' + file_names):
                get_file_as_type(path + '/' + file_names, files, _type)
            else:
                if os.path.splitext(file_names)[1] == _type:
                    files.append(path + '/' + file_names)
        return files
    except NotADirectoryError as ex:
        print(ex.filename, ex.strerror)
        sys.exit(2)


def time_escape(t: float = 0, iteration: bool = False) -> str:
    """
    经过时间（秒）转为字符串
    :param t:时间长度
    :param iteration:是否为迭代
    :return:字符串
    """
    if t < 1:
        if t > 0:
            return f"{int(t * 1000)}毫秒"
        elif t == 0:
            if iteration is True:
                return "0秒"
            else:
                return "当前"
        else:
            return f"过去时间：{time_escape(-t)}"
    elif t < 60:
        return f"{int(t)}秒"
    elif t < 3600:
        return f"{int(t / 60)}分{time_escape(t % 60, True)}"
    elif t < 86400:
        return f"{int(t / 3600)}时{time_escape(t % 3600, True)}"
    else:
        return f"{int(t / 86400)}天{time_escape(t % 86400, True)}"


class Console:

    @staticmethod
    def log(*args) -> None:
        print(*args)

    @staticmethod
    def info(msg, *args) -> None:
        print(Fore.CYAN + str(msg), *args)

    @staticmethod
    def success(msg, *args) -> None:
        print(Fore.GREEN + str(msg), *args)

    @staticmethod
    def warning(msg, *args) -> None:
        print(Fore.YELLOW + str(msg), *args)

    @staticmethod
    def error(msg, *args) -> None:
        print(Fore.RED + str(msg), *args)
