@echo off

for %%i in (*.mp4) do (
	echo file './%%i' >> _concatenate.txt
)

ffmpeg -f concat -i _concatenate.txt -c copy "out.mp4"

del _concatenate.txt

pause
