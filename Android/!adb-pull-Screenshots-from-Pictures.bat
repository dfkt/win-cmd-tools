@echo off

REM http://stackoverflow.com/questions/11074671/adb-pull-multiple-files

echo ^>^>^> adb pull /sdcard/Pictures/Screenshots/ .
adb pull /sdcard/Pictures/Screenshots/ .

echo.

echo ^>^>^> adb shell rm /sdcard/Pictures/Screenshots/*.png
pause
adb shell rm -f /sdcard/Pictures/Screenshots/*.png
adb shell rm -f /sdcard/Pictures/Screenshots/*.jpg
