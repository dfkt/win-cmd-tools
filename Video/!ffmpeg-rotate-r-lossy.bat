@echo off

for %%i in (*) do (
	ffmpeg -i "%%i" -vf transpose=1 "%%~dpni_rotated%%~xi"
)

exit
