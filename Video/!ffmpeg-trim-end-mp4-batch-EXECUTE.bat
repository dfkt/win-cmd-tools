@echo off

REM https://superuser.com/questions/657492/

for %%i in (*.mp4) do (
	call "!ffmpeg-trim-end-mp4-batch-SCRIPT.bat" "%%i"
)

exit