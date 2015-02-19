@echo off

REM fix for writing hours with leading zeroes
for /f "tokens=1 delims=:" %%a in ('time/t') do set hh=%%a

REM fix for European date scheme (31.12.2014)
REM "%programfiles%\WinRAR\Rar.exe" a -s -o+ -m5 -ep "uTorrent-%date:~6,4%-%date:~3,2%-%date:~0,2%-%hh%h%time:~3,2%m%time:~6,2%s.rar" "%appdata%\uTorrent"

REM ISO date scheme (2014-12-31)
"%programfiles%\WinRAR\Rar.exe" a -s -o+ -m5 -ep "uTorrent-%date%-%hh%h%time:~3,2%m%time:~6,2%s.rar" "%appdata%\uTorrent"

pause
