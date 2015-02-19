@echo off

set "nircmd=%portable%\NirSoft\nircmdc.exe"
set "sz=%portable%\7-ZipPortable\App\7-Zip64\7z.exe"
REM set "deflopt=%portable%\DeflOpt\DeflOpt"

for /d %%i in (*) do (
	%nircmd% setfilefoldertime "%%i" "31-12-1999 23:59:59" "31-12-1999 23:59:59" "31-12-1999 23:59:59"
)

for /r %%i in (*) do (
	%nircmd% setfilefoldertime "%%i" "31-12-1999 23:59:59" "31-12-1999 23:59:59" "31-12-1999 23:59:59"
)

for /d %%i in (*) do (
	%sz% a -tzip -mx=9 "%%i.cbz" "%%i\"
	REM %deflopt% /a "%%i.cbz"
)

for %%i in (*.cb*) do (
	%nircmd% setfilefoldertime "%%i" "31-12-1999 23:59:59" "31-12-1999 23:59:59" "31-12-1999 23:59:59"
)

echo.

pause