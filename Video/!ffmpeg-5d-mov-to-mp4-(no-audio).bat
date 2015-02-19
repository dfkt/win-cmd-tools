@echo off

for %%a in ("*.mov") do (
	"%portable%\FFMPEG\ffmpeg.exe" -i "%%a" -vcodec copy -an "%%~na.mp4"
)

pause
