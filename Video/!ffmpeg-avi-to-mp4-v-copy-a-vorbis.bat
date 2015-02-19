@echo off

for %%i in ("*.avi") do (
	"%portable%\FFMPEG\ffmpeg.exe" -i "%%i" -c:v copy -c:a libvorbis -qscale:a 5 "%%~ni.mp4"
)

exit
