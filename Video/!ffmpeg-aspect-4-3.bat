@echo off

for %%i in (*) do (
	ffmpeg -i "%%i" -vcodec copy -acodec copy -aspect 4:3 "%%~dpni_fixed%%~xi"
)

exit
