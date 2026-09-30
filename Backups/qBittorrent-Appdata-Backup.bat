@echo off

set "SEVENZIP=C:\Program Files\7-Zip\7z.exe"

for /f "tokens=1 delims=:" %%a in ('time/t') do set hh=%%a

tasklist /FI "IMAGENAME eq qbittorrent.exe" 2>NUL | find /I "qbittorrent.exe" >NUL

if not errorlevel 1 (
    echo qBittorrent is currently running.
    echo Backup cancelled.
    echo.
    pause
    exit /b 2
)

"%SEVENZIP%" a ^
    -t7z ^
    -mx=9 ^
    ".\Appdata\qBittorrent-Roaming-%date%-%hh%h%time:~3,2%m%time:~6,2%s.7z" ^
    "%APPDATA%\qBittorrent"

"%SEVENZIP%" a ^
   -t7z ^
   -mx=9 ^
   ".\Appdata\qBittorrent-Local-%date%-%hh%h%time:~3,2%m%time:~6,2%s.7z" ^
   "%LOCALAPPDATA%\qBittorrent"

pause
