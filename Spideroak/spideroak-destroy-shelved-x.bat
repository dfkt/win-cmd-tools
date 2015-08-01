@echo off
echo SpiderOakONE --destroy-shelved-x
echo.

echo %date% %time%
echo.

"%programfiles%\SpiderOakONE\SpiderOakONE.exe" --destroy-shelved-x
"%programfiles%\SpiderOakONE\SpiderOakONE.exe" --rebuild-reference-database
echo.

echo %date% %time%
echo.

pause
