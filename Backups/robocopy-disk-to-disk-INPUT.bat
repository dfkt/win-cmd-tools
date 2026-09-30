@echo off

title robocopy

:: /E                   copy subdirectories, including Empty ones.
:: /DCOPY:copyflag[s]   what to COPY for directories (default is /DCOPY:DA).
::                      (copyflags : D=Data, A=Attributes, T=Timestamps).
:: /XF file [file]...   eXclude Files matching given names/paths/wildcards.
:: /XD dirs [dirs]...   eXclude Directories matching given names/paths.

set /p "source=Source disk drive letter: "
set /p "dest=Destination disk drive letter: "
echo.

robocopy %source%: %dest%: /E /DCOPY:DAT /XD "$RECYCLE.BIN" "System Volume Information"

echo.
pause
