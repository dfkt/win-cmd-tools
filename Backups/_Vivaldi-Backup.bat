@echo off
setlocal

rem ============================================================
rem Vivaldi daily backup
rem ============================================================

title Vivaldi Backup

set "SOURCE=C:\Portable\Vivaldi"
set "DEST=D:\Backup\Program Settings Backup\Vivaldi\Backup"
set "SEVENZIP=C:\Program Files\7-Zip\7z.exe"

rem Number of days to keep old backups
set "RETENTION_DAYS=7"

rem Get current date in locale-independent YYYY-MM-DD format
for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format yyyy-MM-dd"') do set "TODAY=%%i"

set "ARCHIVE=%DEST%\Vivaldi-%TODAY%.7z"

rem ============================================================
rem Check required paths
rem ============================================================

if not exist "%SEVENZIP%" (
    echo.
    echo ERROR: 7-Zip was not found:
    echo "%SEVENZIP%"
    exit /b 1
)

if not exist "%SOURCE%" (
    echo.
    echo ERROR: Vivaldi source folder was not found:
    echo "%SOURCE%"
    exit /b 1
)

rem Create destination directory if necessary
if not exist "%DEST%" mkdir "%DEST%"

rem ============================================================
rem Do not back up while Vivaldi is running
rem ============================================================

tasklist /FI "IMAGENAME eq vivaldi.exe" 2>NUL | find /I "vivaldi.exe" >NUL

if not errorlevel 1 (
    echo.
    echo Vivaldi is currently running.
    echo Backup cancelled.
    exit /b 2
)

rem ============================================================
rem Create backup
rem ============================================================

echo Backing up:
echo "%SOURCE%"
echo.
echo To:
echo "%ARCHIVE%"
echo.
echo ------------------------------------------------------------------------

"%SEVENZIP%" a ^
    -t7z ^
    -mx=9 ^
    "%ARCHIVE%" ^
    "%SOURCE%\*" ^
    "-xr!Cache" ^
    "-xr!Code Cache" ^
    "-xr!GPUCache" ^
    "-xr!GrShaderCache" ^
    "-xr!DawnCache" ^
    "-xr!ShaderCache" ^
    "-xr!Media Cache" ^
    "-xr!Service Worker\CacheStorage"

if errorlevel 1 (
    echo.
    echo ERROR: Vivaldi backup failed.
    exit /b 1
)

echo.
echo Backup completed successfully:
echo "%ARCHIVE%"
echo.

rem ============================================================
rem Delete Vivaldi backups older than 7 days
rem ============================================================

echo Removing backups older than %RETENTION_DAYS% days...
echo.

forfiles /p "%DEST%" ^
    /m "Vivaldi-????-??-??.7z" ^
    /d -%RETENTION_DAYS% ^
    /c "cmd /c echo Deleting @path & del /q @path" 2>NUL

echo.
echo Backup maintenance completed.
echo.

endlocal
exit /b 0