@echo off

for %%i in (*.webm) do (
	"%portable%\FFMPEG\ffmpeg.exe" -i "%%i" -vn -acodec copy "%%~ni.ogg"
)

pause
