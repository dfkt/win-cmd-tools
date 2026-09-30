@echo off

for %%i in ("*.mpg") do (
	"%portable%\FFMPEG\ffmpeg.exe" -i "%%i" "%%~ni.mkv"
)

exit
