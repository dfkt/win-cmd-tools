@echo off

FOR /F "TOKENS=1 DELIMS=:" %%A IN ('TIME/T') DO SET HH=%%A

"C:\Program Files\WinRAR\Rar.exe" a -s -o+ -m5 -ep "Sysreset-%date:~6,4%-%date:~3,2%-%date:~0,2%-%HH%h%time:~3,2%m%time:~6,2%s.rar" "%portable%\Sysreset"

pause
