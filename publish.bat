@rem Copyright by BlueWhale. All Rights Reserved.
@echo off
echo 发布Library-2.4.0.2-1.16.1
if not exist %~dp0Pack\Publish\Library-2.4.0.2-1.16.1-Publish (
	md %~dp0Pack\Publish\Library-2.4.0.2-1.16.1-Publish
)
move %~dp0Pack\Library-2.4.0.2-1.16.1.zip %~dp0Pack\Publish\Library-2.4.0.2-1.16.1-Publish\Library-2.4.0.2-1.16.1.zip
move %~dp0Pack\LibRes-1.6.0.2-1.16.1.zip %~dp0Pack\Publish\Library-2.4.0.2-1.16.1-Publish\LibRes-1.6.0.2-1.16.1.zip
move %~dp0Pack\LibRes-1.6.0.2-1.16.1-无GUI版本.zip %~dp0Pack\Publish\Library-2.4.0.2-1.16.1-Publish\LibRes-1.6.0.2-1.16.1-无GUI版本.zip
copy Version.md %~dp0Pack\Publish\Library-2.4.0.2-1.16.1-Publish\Version.md
copy Library项目文档.md %~dp0Pack\Publish\Library-2.4.0.2-1.16.1-Publish\Library项目文档.md
attrib +r %~dp0Pack\Publish\Library-2.4.0.2-1.16.1-Publish\*.* /s /d
echo 压缩文件...
zip.pyc -i %~dp0Pack\Publish\Library-2.4.0.2-1.16.1-Publish -o %~dp0Pack\Publish -n Library-2.4.0.2-1.16.1-Publish.zip && attrib +r %~dp0Pack\Publish\Library-2.4.0.2-1.16.1-Publish.zip
echo 清理临时文件...
rd /s /q %~dp0Pack\Publish\Library-2.4.0.2-1.16.1-Publish\.
echo 发布完成
