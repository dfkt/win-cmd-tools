@echo off

:: https://superuser.com/questions/573644/what-are-the-correct-options-to-use-to-verify-video-files-using-ffmpeg-exe-in-wi#837573

set "errorlog=.\!ffmpeg-errors.txt"

if exist %errorlog% del /q %errorlog%

for /r %%i in ("*.asf" "*.avi" "*.divx" "*.flv" "*.m4v" "*.mkv" "*.mov" "*.mp4" "*.mpeg" "*.mpg" "*.ogv" "*.rm" "*.swf" "*.webm" "*.wmv") do (
	echo %%i >>%errorlog%
	ffmpeg -v warning -threads 8 -i "%%i" -f null - 2>>%errorlog%
	echo. >>%errorlog%
)

if exist %errorlog% %errorlog%

exit
