@echo off

for %%i in (*) do (
	"%portable%\FFMPEG\ffmpeg.exe" -i "%%i" "%%~ni.mp4"
)

exit
