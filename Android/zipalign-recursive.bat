@echo off

for /R %%i in (*.apk *.jar) do (
	zipalign -f -v 4 "%%i" "%%i.tmp" 
	move /Y "%%i.tmp" "%%i"
	echo.
)

pause

REM script adapted from http://stackoverflow.com/questions/3215501/batch-remove-file-extension

REM %1 is the directory to recurse through and %2 is the file extension to remove
REM for /R "%1" %%f in (*.%2) do (
    REM Path (sans drive) is given by %%~pf ; drive is given by %%~df
    REM file name (sans ext) is given by %%~nf ; to 'rename' files, move them:
    REM move "%%~df%%~pf%%~nf.%2" "%%~df%%~pf%%~nf"
    REM echo "%%~df%%~pf%%~nf.%2" renamed to "%%~df%%~pf%%~nf"
REM echo.
REM )
