@echo off

:again

set FILENAME="%~dpnx1"
if "%~dpnx1" == "" goto done

	rename "%~dpnx1" "%~n1-%date%%~x1"

shift
goto again

:done

exit
