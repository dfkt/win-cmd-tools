@echo off

for %%i in (*.mpg) do (
	echo file './%%i' >> _concatenate.txt
)

ffmpeg -f concat -i _concatenate.txt -c copy "out.mpg"

del _concatenate.txt

pause
