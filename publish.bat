@rem Copyright by BlueWhale. All Rights Reserved.
@echo off
echo ����Library-2.6.1.0-1.17.1
if not exist %~dp0Pack\Publish\Library-2.6.1.0-1.17.1-Publish (
	md %~dp0Pack\Publish\Library-2.6.1.0-1.17.1-Publish
)
move %~dp0Pack\Library-2.6.1.0-1.17.1.zip %~dp0Pack\Publish\Library-2.6.1.0-1.17.1-Publish\Library-2.6.1.0-1.17.1.zip
move %~dp0Pack\LibRes-1.8.0.1-1.17.1.zip %~dp0Pack\Publish\Library-2.6.1.0-1.17.1-Publish\LibRes-1.8.0.1-1.17.1.zip
move %~dp0Pack\LibRes-1.8.0.1-1.17.1-��GUI�汾.zip %~dp0Pack\Publish\Library-2.6.1.0-1.17.1-Publish\LibRes-1.8.0.1-1.17.1-��GUI�汾.zip
copy Version.md %~dp0Pack\Publish\Library-2.6.1.0-1.17.1-Publish\Version.md
copy Library��Ŀ�ĵ�.md %~dp0Pack\Publish\Library-2.6.1.0-1.17.1-Publish\Library��Ŀ�ĵ�.md
attrib +r %~dp0Pack\Publish\Library-2.6.1.0-1.17.1-Publish\*.* /s /d
datapack_doc_generate.py -i %~dp0\Library -t loot_tables -v 1.17 -o %~dp0Pack\Publish\Library-2.6.1.0-1.17.1-Publish\Libraryս��Ʒ��.md -l zh_cn -r LibRes
echo ѹ���ļ�...
zip.py -i %~dp0Pack\Publish\Library-2.6.1.0-1.17.1-Publish -o %~dp0Pack\Publish -n Library-2.6.1.0-1.17.1-Publish.zip && attrib +r %~dp0Pack\Publish\Library-2.6.1.0-1.17.1-Publish.zip
echo ������ʱ�ļ�...
rd /s /q %~dp0Pack\Publish\Library-2.6.1.0-1.17.1-Publish\.
echo �������
