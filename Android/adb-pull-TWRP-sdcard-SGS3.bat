@echo off

REM adb root
adb wait-for-device
adb pull /sdcard/TWRP "L:\Temp\SGS3 Backup\TWRP"

pause
