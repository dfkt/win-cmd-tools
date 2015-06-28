@echo off

:again

set FILENAME="%~dpnx1"
if "%~dpnx1" == "" goto done

mogrify -resize 2048x2048^> "%~dpnx1"

shift
goto again

:done

exit
