@echo off

for %%i in ("*.avi") do (
	"%portable%\FFMPEG\ffmpeg.exe" -i "%%i" -vcodec copy -acodec copy "%%~ni.mp4"
)

exit
