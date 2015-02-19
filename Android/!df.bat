@echo off

title df

echo Waiting for device...
echo.
adb wait-for-device
cls

adb shell df /data /system
echo.
pause