@echo off
if not [%2]==[] (
    echo 该操作影响大量文件，请确保改动已经Commit，Ctrl+C退出
    pause
    update_file.py %1 %2
    echo 更新完之后使用ide中的对比操作合并官方修改
    pause
) else (
 	echo 没有参数！
 	exit 2
)
