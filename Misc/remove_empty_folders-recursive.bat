@echo off
for /f "delims=" %%d in ('dir /s /b /ad %1 ^| sort /r') do rd "%%d" 2>nul
pause
