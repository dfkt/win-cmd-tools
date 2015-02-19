@echo off

for %%i in (*.mp4) do (
	ffmpeg -i "%%i" -y -vcodec copy -acodec copy -ss 00:00:02.960 "c:\temp\%%i"
)

exit
