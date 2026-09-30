@echo off

title Pingo - Lossless

set    "pingo=%portable%\Pingo\pingo"
set "deletexp=%portable%\DeleteXP\DeleteXP"
set    "jhead=%portable%\JHead\jhead"
set "exiftool=%portable%\ExifTool\exiftool"
set   comment="0x"

:again

set FILENAME="%~dpnx1"
if "%~dpnx1" == "" goto done

:: ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

echo Converting "%~dpnx1" ...

if exist "%~dpn1.bmp" (
	magick convert "%~dpn1.bmp" "%~dpn1.png"
	%deletexp% "%~dpn1.bmp" >NUL
) else (
	:: "break" does nothing
	break
)

if exist "%~dpn1.tiff" (
	move /y "%~dpn1.tiff" "%~dpn1.tif" >NUL
) else (
	break
)

if exist "%~dpn1.tif" (
	magick convert "%~dpn1.tif" "%~dpn1.png"
	%deletexp% "%~dpn1.tif" >NUL
) else (
	break
)

if exist "%~dpn1.gif" (
	:: Imagemagick currently only converts static GIFs, will create image sequences for animated ones. (It supports animated MNG, but not APNG, not WEBP.)
	echo.
	choice /c yn /m "Found a GIF file. Do you want to convert it to PNG"
	if errorlevel 2 goto gifno
	if errorlevel 1 goto gifyes
	:gifyes
	magick convert "%~dpn1.gif" "%~dpn1.png"
	%deletexp% "%~dpn1.gif" >NUL
) else (
	break
)

:gifno
if exist "%~dpn1.jpeg" (
	move /y "%~dpn1.jpeg" "%~dpn1.jpg" >NUL
) else (
	break
)

if exist "%~dpn1.jpg" (
	%pingo% -s9 -strip=1 "%~dpn1.jpg"
	%jhead% -cl %comment% "%~dpn1.jpg" >NUL
) else (
	break
)

if exist "%~dpn1.png" (
	%pingo% -s9 -strip=1 "%~dpn1.png"
	%exiftool% -Comment=%comment% -overwrite_original "%~dpn1.png" >NUL
) else (
	break
)

if exist "%~dpn1.webp" (
	%pingo% -s9 -strip=1 "%~dpn1.webp"
) else (
	break
)

echo.

:: ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

shift
goto again

:done

exit
