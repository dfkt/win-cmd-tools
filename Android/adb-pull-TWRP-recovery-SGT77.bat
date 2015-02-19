@echo off

REM echo Rebooting to recovery...
REM echo.
REM pause

REM adb reboot recovery

REM echo Wait for recovery to load before continuing...
REM echo.
REM pause

REM adb wait-for-device

adb shell busybox chmod -R 777 /data/media/TWRP/
adb pull /data/media/TWRP "L:\Temp\SGT77 Backup\TWRP"

pause
