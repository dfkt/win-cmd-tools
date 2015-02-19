@echo off

title ADB Install

echo Waiting for device...
echo.
adb wait-for-device
cls

:again

REM set input file name to file name + extension
set FILENAME="%~nx1"

REM if no more input files left to process, go to end
if "%~nx1" == "" goto done

REM install APKs
echo Installing %FILENAME% ...
adb install -r %1
echo.

REM shift arguments down by one (%2 becomes %1, %3 becomes %2, etc.)
shift

goto again

:done

pause

exit
