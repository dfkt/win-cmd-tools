@echo off

set convert="%ProgramFiles%\ImageMagick\convert.exe"
set stripper="%portable%\Stripper\Stripper"
set jpegoptim="%portable%\JPEGOptim\jpegoptim"

for %%i in (*.jpeg *.jpg *.png) do (
	%convert% "%%i" -resize x800 "%%i"
	%stripper% "%%i" 
	%jpegoptim% --strip-all "%%i" 
)

exit
