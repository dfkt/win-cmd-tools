@echo off

for %%i in ("*.wmv") do (
	"%portable%\FFMPEG\ffmpeg.exe" -i "%%i" -vcodec copy -acodec copy "%%i.mkv"
)

exit
