@echo off

set "rar=%programfiles%\WinRAR\WinRAR.exe"
set "logfile=.\!Check-CBX.log"

if exist "%logfile%" del /q "%logfile%"

for /r %%i in (*.cb*) do (
	start "WinRar" /b /min /low /separate /wait "%rar%" t -ri1 -idq -y "%%i"
	if errorlevel 1 echo WINRAR ERROR: %%~dnpxi >> "%logfile%"
)

REM http://stackoverflow.com/a/5484412/2727063
call :checkempty "%logfile%"
goto :eof

:checkempty
if %~z1 == 0 del /q %logfile%
"%logfile%"
goto :eof

exit
