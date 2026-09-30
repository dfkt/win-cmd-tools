@echo off

title Pingo - Lossless

set    "pingo=%portable%\Pingo\pingo"
set "deletexp=%portable%\DeleteXP\DeleteXP"
set    "jhead=%portable%\JHead\jhead"
set "exiftool=%portable%\ExifTool\exiftool"
set   comment="0x"

for %%w in (*.jpeg) do (
	move /y "%%~fw" "%%~dpnw.jpg"
)

for %%t in (*.bmp *.tif?) do (
	echo Converting %%t to PNG...
	magick convert "%%~ft" "%%~dpnt.png"
	%deletexp% "%%t" >NUL
	echo.
)

for %%j in (*.jpg) do (
	echo %%j:
	%pingo% -s9 -strip=1 "%%j"
	%jhead% -cl %comment% "%%j" >NUL
	echo.
)

for %%i in (*.png *.webp) do (
	echo %%i:
	%pingo% -s9 -strip=1 "%%i"
	%exiftool% -Comment=%comment% -overwrite_original "%%i" >NUL
	echo.
)

echo.

pause
