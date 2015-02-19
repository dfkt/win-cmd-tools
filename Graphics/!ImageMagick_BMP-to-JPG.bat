@echo off

set convert="%programfiles%\ImageMagick\convert.exe"
set stripper="%portable%\Stripper\Stripper"
set jpegoptim="%portable%\JPEGOptim\jpegoptim"
set deletexp="%portable%\DeleteXP\DeleteXP.exe"

for %%i in (*.bmp) do (
	%convert% "%%i" "%%~dpni.jpg"
	%stripper% "%%~dpni.jpg" 
	%jpegoptim% --strip-all %%~dpni.jpg" 
	%deletexp% "%%i"
)

exit
