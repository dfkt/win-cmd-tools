@echo off

for %%i in (*.flv *.mp* *.m4v *.aac) do (
	"%portable%\FFMPEG\ffmpeg.exe" -i "%%i" -vn -acodec copy "%%~ni.m4a"
)

pause
