@rem Copyright by BlueWhale. All Rights Reserved.
@echo off
echo ����Library-2.7.0.0-1.19.3
if not exist %~dp0Pack\Publish\Library-2.7.0.0-1.19.3-Publish (
	md %~dp0Pack\Publish\Library-2.7.0.0-1.19.3-Publish
)
move %~dp0Pack\Library-2.7.0.0-1.19.3.zip %~dp0Pack\Publish\Library-2.7.0.0-1.19.3-Publish\Library-2.7.0.0-1.19.3.zip
move %~dp0Pack\LibRes-1.9.0.0-1.19.3.zip %~dp0Pack\Publish\Library-2.7.0.0-1.19.3-Publish\LibRes-1.9.0.0-1.19.3.zip
move %~dp0Pack\LibRes-1.9.0.0-1.19.3-��GUI�汾.zip %~dp0Pack\Publish\Library-2.7.0.0-1.19.3-Publish\LibRes-1.9.0.0-1.19.3-��GUI�汾.zip
copy Version.md %~dp0Pack\Publish\Library-2.7.0.0-1.19.3-Publish\Version.md
copy Library��Ŀ�ĵ�.md %~dp0Pack\Publish\Library-2.7.0.0-1.19.3-Publish\Library��Ŀ�ĵ�.md
copy LICENSE %~dp0Pack\Publish\Library-2.7.0.0-1.19.3-Publish\LICENSE
copy README.md %~dp0Pack\Publish\Library-2.7.0.0-1.19.3-Publish\README.md
attrib +r %~dp0Pack\Publish\Library-2.7.0.0-1.19.3-Publish\*.* /s /d
datapack_doc_generate.py -i %~dp0\Library -t loot_tables -v 1.17 -o %~dp0Pack\Publish\Library-2.7.0.0-1.19.3-Publish\Libraryս��Ʒ��.md -l zh_cn -r LibRes
echo ѹ���ļ�...
zip.py -i %~dp0Pack\Publish\Library-2.7.0.0-1.19.3-Publish -o %~dp0Pack\Publish -n Library-2.7.0.0-1.19.3-Publish.zip && attrib +r %~dp0Pack\Publish\Library-2.7.0.0-1.19.3-Publish.zip
echo ������ʱ�ļ�...
rd /s /q %~dp0Pack\Publish\Library-2.7.0.0-1.19.3-Publish\.
echo �������
