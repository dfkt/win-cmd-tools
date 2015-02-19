@echo off

set mp3val="%portable%\MP3Val\mp3val.exe"
set "logfile=D:\log.mp3val"

if exist %logfile% del /q %logfile%

for %%i in (*.mp3 *.mp2) do (
	%mp3val% "%%i" -f -l"%logfile%" -si -nb -t
)

REM http://stackoverflow.com/a/5484412/2727063
call :checkempty "%logfile%"
goto :eof

:checkempty
if %~z1 == 0 del /q %logfile%
"%logfile%"
goto :eof

exit
