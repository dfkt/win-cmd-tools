@echo off

title JPEGOptim Recursive

set "stripper=%portable%\Stripper\Stripper"
set "jpegoptim=%portable%\JPEGOptim\jpegoptim"
set "jhead=%portable%\JHead\jhead"

for /r %%w in (*.jpeg) do (
	move /y "%%~fw" "%%~dpnw.jpg"
)

for /r %%i in (*.jpg) do (
	%stripper% "%%i" 
	%jpegoptim% --strip-all "%%i" 
	%jhead% -cl 0x "%%i"
	rem - ExifTool is twice as slow as JHead at adding the comment tag
	rem "%portable%\ExifTool\exiftool" -comment=0x -overwrite_original "%%i"
)

echo.

pause
