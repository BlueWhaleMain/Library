@rem Copyright by BlueWhale. All Rights Reserved.
@echo off
echo ����Library-2.5.0.1-1.16.5
if not exist %~dp0Pack\Publish\Library-2.5.0.1-1.16.5-Publish (
	md %~dp0Pack\Publish\Library-2.5.0.1-1.16.5-Publish
)
move %~dp0Pack\Library-2.5.0.1-1.16.5.zip %~dp0Pack\Publish\Library-2.5.0.1-1.16.5-Publish\Library-2.5.0.1-1.16.5.zip
move %~dp0Pack\LibRes-1.7.0.1-1.16.5.zip %~dp0Pack\Publish\Library-2.5.0.1-1.16.5-Publish\LibRes-1.7.0.1-1.16.5.zip
move %~dp0Pack\LibRes-1.7.0.1-1.16.5-��GUI�汾.zip %~dp0Pack\Publish\Library-2.5.0.1-1.16.5-Publish\LibRes-1.7.0.1-1.16.5-��GUI�汾.zip
copy Version.md %~dp0Pack\Publish\Library-2.5.0.1-1.16.5-Publish\Version.md
copy Library��Ŀ�ĵ�.md %~dp0Pack\Publish\Library-2.5.0.1-1.16.5-Publish\Library��Ŀ�ĵ�.md
attrib +r %~dp0Pack\Publish\Library-2.5.0.1-1.16.5-Publish\*.* /s /d
datapack_doc_generate.py -i %~dp0\Library -t loot_tables -v 1.16 -o %~dp0Pack\Publish\Library-2.5.0.1-1.16.5-Publish\Libraryս��Ʒ��.md -l zh_cn
echo ѹ���ļ�...
zip.pyc -i %~dp0Pack\Publish\Library-2.5.0.1-1.16.5-Publish -o %~dp0Pack\Publish -n Library-2.5.0.1-1.16.5-Publish.zip && attrib +r %~dp0Pack\Publish\Library-2.5.0.1-1.16.5-Publish.zip
echo ������ʱ�ļ�...
rd /s /q %~dp0Pack\Publish\Library-2.5.0.1-1.16.5-Publish\.
echo �������
