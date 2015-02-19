@echo off

set /p "width=Crop from left/right: "
set /p "height=Crop from top/bottom: "

for %%i in ("*") do (
	"%portable%\FFMPEG\ffmpeg.exe" -i "%%i" -c:v libx264 -preset slow -crf 20 -c:a libvorbis -qscale:a 5 -vf "crop=iw-2*%width%:ih-2*%height%" "%%~ni_fixed.mp4"
)

exit
