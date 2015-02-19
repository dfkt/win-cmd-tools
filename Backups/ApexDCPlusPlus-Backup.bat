@echo off

FOR /F "TOKENS=1 DELIMS=:" %%A IN ('TIME/T') DO SET HH=%%A

"C:\Program Files\WinRAR\Rar.exe" a -o+ -m5 -ep1 -r0 -u ApexDCPlusPlus-%date:~6,4%-%date:~3,2%-%date:~0,2%-%HH%h%time:~3,2%m%time:~6,2%s.rar "%portable%\ApexDC++\*.xml" "%portable%\ApexDC++\*.dat" "%portable%\ApexDC++\*.log" "%portable%\ApexDC++\*.csv"

pause
