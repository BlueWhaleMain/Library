# -*- coding: gb2312 -*-
# Copyright by BlueWhale. All Rights Reserved.
"""
zipѹ��
"""
import os
import sys
import time
import zipfile
import getopt

from util import time_escape, Console


def get_zip_file(input_path, result):
    """
    ��Ŀ¼����������ȱ���
    :param input_path:
    :param result:
    :return:
    """
    try:
        for file in os.listdir(input_path):
            if os.path.isdir(input_path + '/' + file):
                result.append(input_path + '/' + file)
                # ������Ŀ¼
                get_zip_file(input_path + '/' + file, result)
            else:
                result.append(input_path + '/' + file)
    except NotADirectoryError as ex:
        Console.error(ex.filename, ex.strerror)
        sys.exit(2)


def zip_file_path(input_path, output_path, output_name, compress_level=None):
    """
    ѹ���ļ�
    :param compress_level: ѹ���ȼ�
    :param input_path: ѹ�����ļ���·��
    :param output_path: ��ѹ���������·��
    :param output_name: ѹ��������
    :return:
    """
    f = zipfile.ZipFile(output_path + '/' + output_name, 'w', zipfile.ZIP_DEFLATED, compresslevel=compress_level)
    file_list = []
    get_zip_file(input_path, file_list)
    before_size = 0
    file_count = len(file_list)
    file_index = 0
    while file_index < file_count:
        file = file_list[file_index]
        before_size += os.path.getsize(file)
        arc_name = file[len(input_path):]
        # ����ļ���������·��
        f.write(file, arc_name)
        sys.stdout.write(str(int((file_index / file_count) * 100)) + "%\r")
        sys.stdout.flush()
        file_index += 1
    f.close()
    after_size = os.path.getsize(output_path + '/' + output_name)
    if before_size != 0:
        Console.success("Դ�ļ��ܴ�С��", before_size, "ѹ�����С��", after_size, "ѹ���ʣ�", after_size / before_size * 100, "%")
    else:
        Console.info("�ļ��ܴ�СΪ0")
    return len(file_list)


def main(argv):
    """

    :param argv:
    """
    err_msg = 'zip.py -i <input_path> -o <output_path> -n <output_name> [-l <compress_level>]'
    input_path = ''
    output_path = ''
    output_name = ''
    compress_level = None
    try:
        opts, args = getopt.getopt(argv, "hi:o:n:l:",
                                   ["input_path=", "output_path=", "output_name=", "compress_level="])
        if len(argv) < 6:
            Console.error(err_msg)
            sys.exit(2)
    except getopt.GetoptError as e:
        Console.error(e.msg, e)
        sys.exit(2)
    before = time.time()
    for opt, arg in opts:
        if opt == '-h':
            Console.info(err_msg)
            sys.exit()
        elif opt in ("-i", "--input_path"):
            if arg == "":
                Console.error("Ŀ��·������Ϊ�գ�")
                sys.exit(2)
            input_path = arg
        elif opt in ("-o", "--output_path"):
            if arg == "":
                Console.error("���·������Ϊ�գ�")
                sys.exit(2)
            output_path = arg
        elif opt in ("-n", "--output_name"):
            if arg == "":
                Console.error("����ļ�������Ϊ�գ�")
                sys.exit(2)
            output_name = arg
        elif opt in ("-l", "--compress_level"):
            if not arg == "":
                try:
                    compress_level = int(arg)
                except ValueError:
                    compress_level = arg
    r = zip_file_path(input_path, output_path, output_name, compress_level)
    Console.success("���ѹ��������", r, "����Ŀ", "\r\n����ļ���", output_path + '/' + output_name, "��ʱ��",
                    time_escape(time.time() - before))


if __name__ == "__main__":
    main(sys.argv[1:])
