@echo off

title JPEGOptim

set "stripper=%portable%\Stripper\Stripper"
set "jpegoptim=%portable%\JPEGOptim\jpegoptim"
set "jhead=%portable%\JHead\jhead"

:again

set FILENAME="%~dpnx1"
if "%~dpnx1" == "" goto done

	%stripper% %1
	%jpegoptim% --strip-all %1
	%jhead% -cl 0x %1

echo.

shift
goto again

:done

exit
