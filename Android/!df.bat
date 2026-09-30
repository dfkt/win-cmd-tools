@echo off

title df

echo Waiting for device...
echo.
adb wait-for-device
cls

adb shell df /sdcard /storage/FD7A-30F8
REM adb shell df /data /system
echo.
pause