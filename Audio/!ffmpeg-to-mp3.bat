@echo off

for %%i in (*.flv *.mp* *.m4*) do (
	"%portable%\FFMPEG\ffmpeg.exe" -i "%%i" -vn -acodec copy "%%~ni.mp3"
)

pause
