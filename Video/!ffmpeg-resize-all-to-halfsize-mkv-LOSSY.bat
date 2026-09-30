@echo off

for %%i in ("*.asf" "*.avi" "*.flv" "*.mkv" "*.mov" "*.mp4" "*.mpeg" "*.mpg" "*.rm" "*.wmv") do (
	"%portable%\FFMPEG\ffmpeg.exe" -i "%%i" -c:v libx264 -preset slow -vf "scale=w=iw/2:h=ih/2" "%%~ni-halfsize.mkv"
)

exit
