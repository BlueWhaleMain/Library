# -*- coding: utf-8 -*-
# Copyright by BlueWhale. All Rights Reserved.
"""
压缩json和mcfunction文件
"""
import getopt
import json
import os.path
import sys
import time

from util import time_escape, get_file_as_type, get_encoding

if __name__ == "__main__":
    err_msg = 'min.py -i <input_path> -t <type>'
    file_list = []
    argv = sys.argv[1:]
    input_path = ''
    _type = ''
    try:
        opts, args = getopt.getopt(argv, "hi:t:", ["input_path=", "type="])
        if len(argv) < 4:
            print(err_msg)
            sys.exit(2)
    except getopt.GetoptError as e:
        print(e)
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print(err_msg)
            sys.exit()
        elif opt in ("-i", "--input_path"):
            if arg == "":
                print("目标路径不能为空！")
                sys.exit(2)
            input_path = arg
        elif opt in ("-t", "--type"):
            if arg == "":
                print("压缩格式不能为空！")
                sys.exit(2)
            _type = arg
    before = time.time()
    before_size = 0
    after_size = 0
    if _type == '.json':
        get_file_as_type(input_path, file_list, _type)
        file_count = len(file_list)
        file_index = 0
        result_count = 0
        while file_index < file_count:
            sys.stdout.write(str(int((file_index / file_count) * 100)) + "%\r")
            sys.stdout.flush()
            try:
                before_size += os.path.getsize(file_list[file_index])
                with open(file_list[file_index], encoding=get_encoding(file_list[file_index], None)) as f:
                    d = json.dumps(json.load(f))
                with open(file_list[file_index], 'w', encoding="utf-8") as f:
                    f.write(d)
                after_size += os.path.getsize(file_list[file_index])
                result_count += 1
            except IOError as e:
                print("处理：" + file_list[file_index] + "发生IO错误", e)
            file_index += 1
    elif _type == '.mcfunction':
        get_file_as_type(input_path, file_list, _type)
        file_count = len(file_list)
        file_index = 0
        _index = 0
        result_count = 0
        while file_index < file_count:
            sys.stdout.write(str(int((file_index / file_count) * 100)) + "%\r")
            sys.stdout.flush()
            b_size = 0
            try:
                b_size = os.path.getsize(file_list[file_index])
                if _index <= 0:
                    before_size += b_size
                    result_count += 1
                r = ''
                res = []
                with open(file_list[file_index], encoding=get_encoding(file_list[file_index], _index)) as f:
                    res.append("# Copyright by BlueWhale. All Rights Reserved.\n")
                    while True:
                        r = f.readline()
                        if r:
                            if r.split():
                                if r[0] != '#':
                                    res.append(r)
                                elif len(r) > 2:
                                    if r[1] == "@":
                                        if r[2:] == "Debug":
                                            res.append(f"say from file:{file_list[file_index]}")
                                            print(f"注意：{file_list[file_index]}包含Debug注解")
                        else:
                            break
                if len(res) > 1:
                    with open(file_list[file_index], 'w', encoding="utf-8") as f:
                        f.writelines(res)
                after_size += os.path.getsize(file_list[file_index])
                if _index > 0:
                    print("尝试处理", _index, "次后成功解决")
                    _index = 0
            except IOError as e:
                print("处理：" + file_list[file_index] + "发生IO错误", e)
            except UnicodeDecodeError as e:
                _index += 1
                if _index > b_size:
                    print("处理：" + file_list[file_index] + "发生无法解决的Unicode解码错误", e.reason)
                    _index = 0
                else:
                    if _index == 1:
                        print("处理：" + file_list[file_index] + "发生Unicode解码异常", e.reason)
                    file_index -= 1
            file_index += 1
    else:
        print("未知的格式：" + _type)
        sys.exit(2)
    if before_size != 0:
        print("源文件总大小：", before_size, "压缩后大小：", after_size, "压缩率：", after_size / before_size * 100, "%")
    else:
        print("文件总大小为0")
    print("处理了：", result_count, "个文件", "共", len(file_list), "个文件", "耗时：", time_escape(time.time() - before))
