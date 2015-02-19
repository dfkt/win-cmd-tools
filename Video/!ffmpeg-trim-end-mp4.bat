@echo off

for %%i in (*.mp4) do (
	ffmpeg -i "%%i" -y -vcodec copy -acodec copy -t 00:04:57.300 "c:\temp\%%i"
)

exit
