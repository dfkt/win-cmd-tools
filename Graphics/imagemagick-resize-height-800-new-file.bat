@echo off

set convert="%ProgramFiles%\ImageMagick\convert.exe"
set stripper="%portable%\Stripper\Stripper"
set jpegoptim="%portable%\JPEGOptim\jpegoptim"

for %%i in (*.jpeg *.jpg *.png) do (
	%convert% "%%i" -resize x800 "%%~dpni-800px.jpg"
	%stripper% "%%~dpni-800px.jpg" 
	%jpegoptim% --strip-all "%%~dpni-800px.jpg" 
)

exit
