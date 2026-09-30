@echo off

set    "pingo=%portable%\Pingo\pingo"
set    "jhead=%portable%\JHead\jhead"
set "deletexp=%portable%\DeleteXP\DeleteXP.exe"
set   comment="0x"

:again

set FILENAME="%~dpnx1"
if "%~dpnx1" == "" goto done

	magick convert %1 "%~dpn1.jpg"
	%pingo% -s9 -strip=1 "%~dpn1.jpg"
	%jhead% -cl %comment% "%~dpn1.jpg"
	%deletexp% %1

shift
goto again

:done

exit
