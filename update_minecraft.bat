@echo off
if not [%2]==[] (
    echo �ò���Ӱ������ļ�����ȷ���Ķ��Ѿ�Commit��Ctrl+C�˳�
    pause
    update_file.py %1 %2
    echo ������֮��ʹ��ide�еĶԱȲ����ϲ��ٷ��޸�
    pause
) else (
 	echo û�в�����
 	exit 2
)
