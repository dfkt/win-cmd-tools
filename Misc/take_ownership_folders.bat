@echo off
set /P pwn="Enter path to folder: "
takeown /f %pwn% /r /d y
icacls %pwn% /grant administrators:F /t
echo.
pause
