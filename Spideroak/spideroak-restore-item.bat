@echo off
echo SpiderOakONE --restore
echo.

echo %date% %time%
echo.

set /p item=Item to restore (full path incl. doublequotes): 
echo.

"%programfiles%\SpiderOakONE\SpiderOakONE.exe" --restore=%item%
echo.

echo %date% %time%
echo.

pause
