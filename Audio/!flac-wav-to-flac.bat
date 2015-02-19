@echo off

title FLAC Encoder

set "flac=%portable%\FLAC-x64\flac.exe"

for %%i in (*.wav) do (
	%flac% --delete-input-file -8 --keep-foreign-metadata -V "%%i" -o "%%~ni.flac"
	echo.
	echo ##################################################################################
	echo.
)

echo.
pause
