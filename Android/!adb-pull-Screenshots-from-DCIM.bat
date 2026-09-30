@echo off

REM http://stackoverflow.com/questions/11074671/adb-pull-multiple-files

echo ^>^>^> adb pull /sdcard/DCIM/Screenshots/ .
adb pull /sdcard/DCIM/Screenshots/ .

echo.

echo ^>^>^> adb shell rm /sdcard/DCIM/Screenshots/*.png
pause
adb shell rm -f /sdcard/DCIM/Screenshots/*.png
adb shell rm -f /sdcard/DCIM/Screenshots/*.jpg
