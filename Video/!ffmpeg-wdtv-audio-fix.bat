@echo off

for %%i in ("*.mkv" "*.mp4") do (
	"%portable%\FFMPEG\ffmpeg.exe" -i "%%i" -vcodec copy -scodec copy "%%~dpni-FIXED.mkv"
)

exit
