@echo off

set    "pingo=%portable%\Pingo\pingo"
set    "jhead=%portable%\JHead\jhead"
set "deletexp=%portable%\DeleteXP\DeleteXP.exe"
set   comment="0x"

for %%i in (*.avif *.bmp *.tif? *.webp) do (
	magick convert "%%i" "%%~dpni.jpg"
	%pingo% -s9 -strip=1 "%%~dpni.jpg"
	%jhead% -cl %comment% "%%~dpni.jpg"
	%deletexp% "%%i"
)

exit
