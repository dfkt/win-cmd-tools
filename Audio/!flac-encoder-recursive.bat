@echo off

title FLAC Encoder

set "flac=%portable%\FLAC-x64\flac.exe"

for /r %%i in (*.flac) do (
	cd "%%~dpi"
	echo %%~dpi
	move /y "%%i" "%%i.bak" > NUL
	%flac% --delete-input-file -8 -V "%%i.bak" -o "%%i"
	echo.
	echo ##################################################################################
	echo.
)

echo.
pause
