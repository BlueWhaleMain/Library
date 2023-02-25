import os
import sys
import zipfile


def search_str(src, s):
    """ 查找特定字符串 """
    if '!' in src:
        name, arc_path = src.split('!')
        if not os.path.isfile(name):
            print(f'{name} 文件不存在！')
            sys.exit(2)
        with zipfile.ZipFile(name, 'r') as f:
            for src_path in f.namelist():
                if not src_path.startswith(arc_path):
                    continue
                try:
                    with f.open(src_path, 'r') as zf:
                        ss = zf.readline().decode('utf-8')
                        while ss:
                            if s in ss:
                                print(src_path)
                                break
                            ss = zf.readline().decode('utf-8')
                except UnicodeDecodeError:
                    pass
                except OSError as e:
                    print(e)
    else:
        for src_path in os.listdir(src):
            try:
                with open(src_path, 'r', encoding='utf-8') as zf:
                    ss = zf.readline()
                    while ss:
                        if s in ss:
                            print(src_path)
                            break
                        ss = zf.readline()
            except OSError as e:
                print(e)


if __name__ == '__main__':
    if len(sys.argv) < 3:
        print(f'{sys.argv[0]} src(path) str(arg)')
        sys.exit(2)
    search_str(sys.argv[1], sys.argv[2])
