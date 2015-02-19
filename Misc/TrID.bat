@echo off

set "trid=%portable%\TrID\trid.exe"

for %%i in (*) do (
	%trid% -ce "%%i"
)

for %%i in (*.m4v *.m4r *.3g2) do (
	move "%%~dpnxi" "%%~dpni.mp4"
)

for %%i in (*.mka) do (
	move "%%~dpnxi" "%%~dpni.mkv"
)

echo.
pause
