@echo off

set /p "package=Uninstall package: "

adb shell pm uninstall %package%

echo.
pause
