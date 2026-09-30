@echo off

title ADB Push to Ext. Video

echo Waiting for device...
echo.
adb wait-for-device
cls

:again

REM set input file name to file name + extension
set FILENAME="%~nx1"

REM if no more input files left to process, go to end
if "%~nx1" == "" goto done

REM push file to device
echo Pushing %FILENAME% ...
REM Sandisk16GB:
REM adb push -p %1 /storage/16F7-E9A5/Video/%FILENAME%
REM Sandisk 128GB:
adb push -p %1 /storage/6133-3264/Video/%FILENAME%
echo.

REM shift arguments down by one (%2 becomes %1, %3 becomes %2, etc.)
shift

goto again

:done

pause

exit
