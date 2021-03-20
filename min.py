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

from util import time_escape, get_file_as_type, get_encoding, Console

if __name__ == "__main__":
    err_msg = 'min.py -i <input_path> -t <type>'
    file_list = []
    argv = sys.argv[1:]
    input_path = ''
    _type = ''
    debug = True
    try:
        opts, args = getopt.getopt(argv, "hi:t:r", ["input_path=", "type="])
        if len(argv) < 4:
            Console.error(err_msg)
            sys.exit(2)
    except getopt.GetoptError as e:
        Console.error(e.msg, e)
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            Console.info(err_msg)
            sys.exit()
        elif opt in ("-i", "--input_path"):
            if arg == "":
                Console.error("目标路径不能为空！")
                sys.exit(2)
            input_path = arg
        elif opt in ("-t", "--type"):
            if arg == "":
                Console.error("压缩格式不能为空！")
                sys.exit(2)
            _type = arg
        elif opt == '-r':
            debug = False
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
            file = file_list[file_index]
            try:
                before_size += os.path.getsize(file)
                with open(file, encoding=get_encoding(file, None)) as f:
                    d = json.dumps(json.load(f))
                with open(file, 'w', encoding="utf-8") as f:
                    f.write(d)
                after_size += os.path.getsize(file)
                result_count += 1
            except IOError as e:
                Console.warning("处理：" + file + "发生IO错误", e)
            finally:
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
            file = file_list[file_index]
            try:
                b_size = os.path.getsize(file)
                if _index <= 0:
                    before_size += b_size
                    result_count += 1
                r = ''
                res = []
                with open(file, encoding=get_encoding(file, _index)) as f:
                    res.append("# Copyright by BlueWhale. All Rights Reserved.\n")
                    while True:
                        r = f.readline()
                        if r:
                            if r.split():
                                if r[0] != '#':
                                    res.append(r)
                                elif len(r) > 2:
                                    if r[1] == "@":
                                        # Debug模式起效的注解
                                        if debug:
                                            if r[2:] == "Debug":
                                                res.append(f"say from file:{file}")
                                                Console.warning(f"注意：{file}包含Debug注解")
                                            elif r[2:].startswith("Debug "):
                                                res.append(r[8:])
                                                Console.warning(f"注意：{file}包含Debug指令")
                        else:
                            break
                if len(res) > 1:
                    with open(file, 'w', encoding="utf-8") as f:
                        f.writelines(res)
                after_size += os.path.getsize(file)
                if _index > 0:
                    Console.success("尝试处理", _index, "次后成功解决")
                    _index = 0
            except IOError as e:
                Console.warning("处理：" + file + "发生IO错误", e)
            except UnicodeDecodeError as e:
                _index += 1
                if _index > b_size:
                    Console.warning("处理：" + file + "发生无法解决的Unicode解码错误", e.reason)
                    _index = 0
                else:
                    if _index == 1:
                        Console.warning("处理：" + file + "发生Unicode解码异常", e.reason)
                    file_index -= 1
            finally:
                file_index += 1
    else:
        Console.error("未知的格式：" + _type)
        sys.exit(2)
    if before_size != 0:
        Console.info("源文件总大小：", before_size, "压缩后大小：", after_size, "压缩率：", after_size / before_size * 100, "%")
    else:
        Console.info("文件总大小为0")
    Console.success("处理了：", result_count, "个文件", "共", len(file_list), "个文件", "耗时：", time_escape(time.time() - before))
