@echo off

for %%i in (*) do (
	ffmpeg -i "%%i" -vf transpose=2 "%%~dpni_rotated%%~xi"
)

exit
