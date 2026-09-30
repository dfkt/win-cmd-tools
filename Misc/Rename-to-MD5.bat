@echo off
title=Rename-to-MD5

REM HashMyFiles-x86 and -x64 write UCS-2 character encoding text files, which cannot be read by "for /f".
REM This needs the old HashMyFiles-98 to work, which writes ANSI text files.

set "hmf=%portable%\NirSoft\HashMyFiles.exe"

:again

set FILENAME="%~dpnx1"
if "%~dpnx1" == "" goto done

%hmf% /file "%~dpnx1" /stabular "%temp%\md5.tmp"
for /f "usebackq tokens=2 delims= " %%i in ("%temp%\md5.tmp") do ren "%~dpnx1" "%%~ni%~x1"
del "%temp%\md5.tmp"

shift
goto again

:done

exit
