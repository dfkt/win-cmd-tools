@echo off

:: https://trac.ffmpeg.org/wiki/FFmpeg%20and%20the%20SoX%20Resampler
:: https://trac.ffmpeg.org/wiki/AudioChannelManipulation

for %%i in (*) do (
	ffmpeg -i "%%i" -af aresample=resampler=soxr -ar 44100 -ac 1 "%%~dpni.wav"
)

pause
