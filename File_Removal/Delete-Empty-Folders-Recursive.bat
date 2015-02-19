@echo off
for /f "delims=" %%d in ('dir /s /b /ad ^| sort /r') do rd "%%d" 2> NUL
REM for /f "usebackq" %%d in ("dir /ad/b/s | sort /R") do rd "%%d" 
exit