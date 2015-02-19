@echo off

set   convert="%programfiles%\ImageMagick\convert.exe"
set  stripper="%portable%\Stripper\Stripper"
set jpegoptim="%portable%\JPEGOptim\jpegoptim"
set     jhead="%portable%\JHead\jhead"
set  deletexp="%portable%\DeleteXP\DeleteXP.exe"
set   comment="0x"

for %%i in (*.png) do (
	%convert% "%%i" "%%~dpni.jpg"
	%stripper% "%%~dpni.jpg"
	%jpegoptim% --strip-all "%%~dpni.jpg"
	%jhead% -cl %comment% "%%~dpni.jpg"
	%deletexp% "%%i"
)

exit
