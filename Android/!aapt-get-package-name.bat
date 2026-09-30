@echo off

set "aapt=%LOCALAPPDATA%\Android\android-sdk\build-tools\21.1.2\aapt.exe"
set "grep=%PORTABLE%\UnxUtils\grep.exe"

for %%i in (*.apk) do (
	echo %%i
	%aapt% dump badging "%%i" | %grep% package
	echo.
)

pause
