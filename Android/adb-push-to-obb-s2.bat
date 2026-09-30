@echo off

title ADB Push to /obb

echo Waiting for device...
echo.
adb root
adb wait-for-device
cls

set /p "FOLDER=Create OBB folder: "
adb shell mkdir /sdcard/Android/obb/%FOLDER%

:again

REM set input file name to file name + extension
set FILENAME="%~nx1"

REM if no more input files left to process, go to end
if "%~nx1" == "" goto done

REM push file to device
echo Pushing %FILENAME% ...

REM adb push %1 /data/media/obb/%FILENAME%
REM adb push %1 /sdcard/Android/obb/%FILENAME%
REM adb shell su -c chmod 777 /storage/emulated/obb
REM adb push %1 /storage/emulated/obb/%FILENAME%
REM adb push %1 /storage/emulated/0/Android/obb/%FILENAME%
REM adb push %1 /storage/self/primary/Android/obb/%FILENAME%
adb push -p %1 /sdcard/%FILENAME%
adb shell mv /sdcard/%FILENAME% /sdcard/Android/obb/%FOLDER%
echo.

REM shift arguments down by one (%2 becomes %1, %3 becomes %2, etc.)
shift

goto again

:done

pause

exit
