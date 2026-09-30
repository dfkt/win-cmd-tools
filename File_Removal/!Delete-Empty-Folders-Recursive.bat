@echo off

for /f "delims=" %%d in ('dir /s /b /ad ^| sort /r') do (
    rd "%%d" 2>nul && echo Deleted: "%%d"
)

pause
