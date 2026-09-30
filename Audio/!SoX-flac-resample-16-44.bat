@echo off

:: https://what.cd/wiki.php?action=article&id=683
:: https://redacted.ch/wiki.php?action=article&id=10

mkdir ".\!resampled"

for %%i in (*.flac) do (
	sox "%%i" -S -G -b 16 ".\!resampled\%%~nxi" rate -v -L 44100 dither
)

pause
