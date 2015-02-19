@echo off
for /r %%i in (*.pf* *.*tf *.afm *.inf) do move "%%i" "%%i"/../..
for /f "delims=" %%d in ('dir /s /b /ad ^| sort /r') do rd "%%d"
pause