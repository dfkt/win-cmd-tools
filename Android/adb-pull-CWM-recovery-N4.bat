@echo off

adb kill-server

echo ^>^>^> Rebooting to recovery - wait until CWM is loaded!
echo.

adb reboot recovery
echo.

pause
echo.

adb devices
REM echo.

REM pause
REM echo.

REM echo ^>^>^> Mounting /data...
REM echo.

REM adb shell mount -o remount,rw -t ext4 /dev/block/mmcblk0p23 /data

echo ^>^>^> Now mount /data!
echo.

pause
echo.

echo ^>^>^> Pulling CWM backups...
echo.

adb pull /data/media/clockworkmod/backup/ "L:\Temp\Nexus 4 Backup\CWM"
echo.

echo ^>^>^> Rebooting...
echo.

pause
echo.

adb reboot

exit
