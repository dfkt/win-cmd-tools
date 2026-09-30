@echo off

:again

set FILENAME="%~dpnx1"
if "%~dpnx1" == "" goto done

	for /f "tokens=1 delims=:" %%a in ('time/t') do set hh=%%a
	rename "%~dpnx1" "%~n1-%date%-%hh%h%time:~3,2%m%time:~6,2%s%~x1"

shift
goto again

:done

exit
