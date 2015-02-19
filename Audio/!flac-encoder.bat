@echo off

title FLAC Encoder

set "flac=%portable%\FLAC-x64\flac.exe"

for %%i in (*.flac) do (
	move /y "%%i" "%%i.bak" > NUL
	%flac% --delete-input-file -8 -V "%%i.bak" -o "%%i"
	echo.
	echo ##################################################################################
	echo.
)

echo.
pause
