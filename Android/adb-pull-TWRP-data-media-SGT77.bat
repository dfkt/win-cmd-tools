@echo off

REM adb root
adb wait-for-device
adb pull /data/media/TWRP "L:\Temp\SGT77 Backup\TWRP"

pause
