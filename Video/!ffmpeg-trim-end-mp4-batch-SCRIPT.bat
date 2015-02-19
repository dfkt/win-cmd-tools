@echo off

REM https://superuser.com/questions/657492/

for /f "tokens=*" %%a in ('ffprobe -show_format -i %1 ^| find "duration"') do set _duration=%%a
set _duration=%_duration:~9%
for /f "delims=. tokens=1*" %%b in ('echo %_duration%') do set /a "_durS=%%b"
for /f "delims=. tokens=2*" %%c in ('echo %_duration%') do set /a "_durMS=%%c"

REM following line is seconds to cut:
set /a "_durS-=52"
set /a "_durMS=50"

set "_newduration=%_durS%.%_durMS%"
set "_output=%~n1"
REM md _fixed
REM _ffmpeg -ss 0 -i %1 -y -t %_newduration% -c copy "_fixed\%_output%.mp4"
ffmpeg -ss 0 -i %1 -y -t %_newduration% -c copy "C:\Temp\%_output%.mp4"
