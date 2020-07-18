@rem Copyright by BlueWhale. All Rights Reserved.
@echo off
set name=%1
set ver=%2
set before=%time%
if not "%2"=="" (
    echo build����%~dp0%1
	echo ׼����...
	if not exist %~dp0Pack (
		md %~dp0Pack
	)
	if not exist %~dp0Pack\history (
		md %~dp0Pack\history
	)
	if exist %~dp0Pack\%name%-%ver%.zip (
		echo ����%~dp0Pack\%name%-%ver%.zip
		if exist %~dp0Pack\history\%name%-%ver%.zip (
			del /f /q %~dp0Pack\history\%name%-%ver%.zip
		)
		move %~dp0Pack\%name%-%ver%.zip %~dp0Pack\history\%name%-%ver%.zip
	)
	if exist %~dp0Pack\%name%\*.* (
		echo ɾ��ԭ�ļ�
		rd /s /q %~dp0Pack\%name%\.
	)
	echo �����ļ�...
	xcopy %~dp0%1 %~dp0Pack\%name% /K /X /I /O /E /Q /Y
	echo min json...
	min.pyc -i %~dp0Pack\%name% -t .json
	echo min mcfunction...
	min.pyc -i %~dp0Pack\%name% -t .mcfunction
	echo Ӧ��ֻ������...
	attrib +r %~dp0Pack\%name%\*.* /s /d
	if not "%9"=="" (
		echo ����������
	) else (
		if not "%3"=="" (
			echo ִ���Զ�������...
			echo %3 %4 %5 %6 %7 %8
			%3 %4 %5 %6 %7 %8
		)
	)
	echo ѹ���ļ�...
	zip.pyc -i %~dp0Pack\%name% -o %~dp0Pack -n %name%-%ver%.zip && attrib +r %~dp0Pack\%name%-%ver%.zip
	echo ������ʱ�ļ�...
	rd /s /q %~dp0Pack\%name%\.
) else (
	echo û�в�����
	exit 2
)
set after=%time%
if "%after:~,2%" lss "%before:~,2%" set "add=+24"
set /a times=(%after:~,2%-%before:~,2%%add%)*360000+(1%after:~3,2%%%100-1%before:~3,2%%%100)*6000+(1%after:~6,2%%%100-1%before:~6,2%%%100)*100+(1%after:~-2%%%100-1%before:~-2%%%100)
echo build��ɣ���ʱ��%times%0����