@echo off

for %%i in (*.mp4 *.avi) do (
	ffmpeg -i "%%i" -y -vcodec copy -acodec copy -t 00:00:50.000 "c:\temp\%%i"
)

exit
