@echo off

echo ^>^>^> Pulling CWM backups...
echo.

adb pull /mnt/shell/emulated/clockworkmod/backup/ "L:\Temp\Nexus 4 Backup\CWM"
echo.

pause
