@echo off

REM https://what.cd/wiki.php?action=article&id=683

mkdir ".\!resampled"

for %%i in (*.flac) do (
	sox "%%i" -G -b 16 ".\!resampled\%%~nxi" rate -v -L 44100 dither
)

pause
