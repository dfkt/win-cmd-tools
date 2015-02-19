@echo off

set "trid=%portable%\TrID\trid.exe"

for /r %%i in (*) do (
	%trid% -ce "%%i"
)

for /r %%i in (*.m4v *.m4r *.3g2) do (
	move "%%~dpnxi" "%%~dpni.mp4"
)

for /r %%i in (*.mka) do (
	move "%%~dpnxi" "%%~dpni.mkv"
)

echo.
pause
