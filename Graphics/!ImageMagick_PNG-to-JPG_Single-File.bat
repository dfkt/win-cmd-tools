@echo off

set   convert="%programfiles%\ImageMagick\convert.exe"
set  stripper="%portable%\Stripper\Stripper"
set jpegoptim="%portable%\JPEGOptim\jpegoptim"
set     jhead="%portable%\JHead\jhead"
set  deletexp="%portable%\DeleteXP\DeleteXP.exe"
set   comment="0x"


:again

set FILENAME="%~dpnx1"
if "%~dpnx1" == "" goto done

	%convert% %1 "%~dpn1.jpg"
	%stripper% "%~dpn1.jpg"
	%jpegoptim% --strip-all "%~dpn1.jpg"
	%jhead% -cl %comment% "%~dpn1.jpg"
	%deletexp% %1
)

shift
goto again

:done

exit
