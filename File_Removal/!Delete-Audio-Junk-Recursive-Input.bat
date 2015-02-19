@echo off

set "junk=fssort.ini desktop.ini *.sfv *.md5 *.m3u* thumbs.db *foo_dr.txt Album*_Small.jpg Album*_Large.jpg *.sfk *DS_Store* .Trashes audiochecker.log"
set "deletexp=%portable%\DeleteXP\DeleteXP.exe"

:yes
echo This script removes recursively:
echo.
echo %junk%
echo.
echo Files are moved to the recycle bin. Root desktop.ini is kept.
echo.
echo -------------------------------------------------------------
echo.

set /p "dirinput=Enter full path: "

echo.

cd /d "%dirinput%"

if exist ".\desktop.ini" (
	attrib -h -s -a ".\desktop.ini"
	move /y ".\desktop.ini" ".\desktop.ini.bak" >nul
)

for /r %%i in (%junk%) do (
	if exist "%%i" (
		"%deletexp%" /a "%%i"
	)
)

if exist ".\desktop.ini.bak" (
	move /y ".\desktop.ini.bak" ".\desktop.ini" >nul
	attrib +h +s +a ".\desktop.ini"
)

echo.

choice /c yn /m "Do you want to run the script again"
cls
if errorlevel 2 goto no
if errorlevel 1 goto yes

:no
exit
