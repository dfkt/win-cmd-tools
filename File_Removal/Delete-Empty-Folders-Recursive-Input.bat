@echo off

set /p "dirinput=Enter full path: "

cd /d "%dirinput%"

for /f "delims=" %%d in ('dir /s /b /ad ^| sort /r') do rd "%%d" 2> NUL

exit
