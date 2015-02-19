@echo off

for %%i in (*.apk *.jar) do (
	zipalign -f -v 4 "%%i" "%%i.tmp" 
	move /Y "%%i.tmp" "%%i"
	echo.
)

pause
