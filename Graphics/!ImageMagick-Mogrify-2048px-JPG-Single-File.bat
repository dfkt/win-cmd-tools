@echo off

set    "pingo=%portable%\Pingo\pingo"
set    "jhead=%portable%\JHead\jhead"
set   comment="0x"

:again

set FILENAME="%~dpnx1"
if "%~dpnx1" == "" goto done

	magick mogrify -resize 2048x2048^> "%~dpnx1"
	%pingo% -s9 -strip=1 "%~dpnx1"
	%jhead% -cl 0x "%~dpnx1"

shift
goto again

:done

exit
