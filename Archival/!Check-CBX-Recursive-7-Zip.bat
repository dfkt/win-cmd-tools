@echo off

set "sz=%portable%\7-ZipPortable\App\7-Zip64\7z.exe"
set "logfile=.\!Check-CBX.log"

if exist "%logfile%" del /q "%logfile%"

for /r %%i in (*.cb*) do (
	start "7-Zip" /b /low /separate /wait "%sz%" t "%%i"
	if errorlevel 1 echo 7-ZIP ERROR:  %%~dnpxi >> "%logfile%"
)

REM http://stackoverflow.com/a/5484412/2727063
call :checkempty "%logfile%"
goto :eof

:checkempty
if %~z1 == 0 del /q %logfile%
"%logfile%"
goto :eof

exit
