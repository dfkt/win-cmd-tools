@echo off

title ASFBin Concatenate

set "text=.\^!asfbin-concatenate.txt"
set "asfbin=.\asfbin.exe"

if exist "*.wmv" (dir /b "*.wmv" >> "%text%")
if exist "*.asf" (dir /b "*.asf" >> "%text%")

%asfbin% -l "%text%" -o "out.wmv" -y -act -rkf -optps

del "%text%"

echo.
echo.
echo Press any key to exit...
pause > NUL
exit
