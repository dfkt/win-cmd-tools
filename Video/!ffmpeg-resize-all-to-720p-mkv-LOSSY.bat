@echo off

for %%i in ("*.asf" "*.avi" "*.flv" "*.mkv" "*.mov" "*.mp4" "*.mpeg" "*.mpg" "*.rm" "*.wmv") do (
	"%portable%\FFMPEG\ffmpeg.exe" -i "%%i" -c:v libx264 -preset slow -vf "scale=-1:720" "%%~ni-720p.mkv"
)
::	"%portable%\FFMPEG\ffmpeg.exe" -i "%%i" -vf "scale=-1:720" "%%~ni-720p.mkv"

exit
