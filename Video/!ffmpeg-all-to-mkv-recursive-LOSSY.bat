@echo off

for /r %%i in ("*.asf" "*.avi" "*.flv" "*.mov" "*.mp4" "*.mpeg" "*.mpg" "*.rm" "*.wmv") do (
	"%portable%\FFMPEG\ffmpeg.exe" -i "%%i" -c:v libx264 -preset slow -crf 23 "%%~dpni.mkv"
)

exit
