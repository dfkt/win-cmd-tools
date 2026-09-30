@echo off

REM http://stackoverflow.com/questions/11074671/adb-pull-multiple-files

echo ^>^>^> adb pull /sdcard/DCIM/Camera/ .
echo.
adb pull /sdcard/DCIM/Camera/ .

echo.

echo ^>^>^> adb shell rm /sdcard/DCIM/Camera/*.jpg
adb shell rm -f /sdcard/DCIM/Camera/*.jpg
adb shell rm -rf /sdcard/DCIM/.thumbnails
adb shell rm -rf /sdcard/DCIM/.tmfs

echo.

pause
