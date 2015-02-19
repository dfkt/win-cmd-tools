@echo off

for %%i in ("*.flv") do (
	"%portable%\FFMPEG\ffmpeg.exe" -i "%%i" -vcodec copy -acodec copy "%%i.mkv"
)

exit
