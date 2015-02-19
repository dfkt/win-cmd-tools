@echo off

for %%i in (*) do (
	ffmpeg -i "%%i" -vcodec copy -acodec copy -aspect 16:9 "%%~dpni_fixed%%~xi"
)

exit
