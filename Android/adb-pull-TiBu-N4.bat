@echo off

FOR /F "TOKENS=1 DELIMS=:" %%A IN ('TIME/T') DO SET HH=%%A

REM adb root
adb wait-for-device
adb pull /sdcard/TitaniumBackup "L:\Temp\Nexus 4 Backup\TitaniumBackup\TitaniumBackup-%date:~6,4%-%date:~3,2%-%date:~0,2%-%HH%h%time:~3,2%m%time:~6,2%s"
pause