@echo off

title MP3val

set "logfile=D:\log.mp3val"

if exist %logfile% del /q %logfile%

for /r %%i in (*.mp3 *.mp2) do (
	"%portable%\MP3Val\mp3val.exe" "%%i" -f -l"D:\log.mp3val" -si -nb -t
)

REM http://stackoverflow.com/a/5484412/2727063
call :checkempty "%logfile%"
goto :eof

:checkempty
if %~z1 == 0 del /q %logfile%
"%logfile%"
goto :eof

exit