@echo off

title Android ADB Find Recursive

set "adb=%LOCALAPPDATA%\Android\android-sdk\platform-tools\adb.exe"

%adb% root 1>nul

:yes
set /p "searchterm=Enter wildcard search term: "
echo.

:: exclude system directories from search
%adb% shell busybox find / ^
	-type d -name dev -prune -o ^
	-type d -name proc -prune -o ^
	-type d -name runtime -prune -o ^
	-type d -name sys -prune -o ^
	-type d -name system -prune -o ^
	-name '*%searchterm%*' -print

echo.
choice /c yn /m "Do you want to search again"
echo.
:: cls
if errorlevel 2 goto no
if errorlevel 1 goto yes

:no
pause >nul | echo Press any key to exit...
