@echo off

set "aspect=16:9"
set /p "aspect=Aspect ratio (default is 16:9): "

set "container=mp4"
set /p "container=Output container (default is MP4): "

for %%i in (*) do (
	ffmpeg -i "%%i" -vcodec copy -acodec copy -aspect %aspect% "%%~dpni_fixed.%container%"
)

exit
