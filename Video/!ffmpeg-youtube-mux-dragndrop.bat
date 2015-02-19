@echo off

set STREAM1="%~dpn1"
set STREAM2="%~dpn2"

ffmpeg -i %1 -i %2 -vcodec copy -acodec copy %STREAM1%-MUX.mp4

pause
