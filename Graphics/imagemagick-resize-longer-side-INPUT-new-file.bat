@echo off

set convert="%programfiles%\ImageMagick\convert.exe"
set stripper="%portable%\Stripper\Stripper"
set jpegoptim="%portable%\JPEGOptim\jpegoptim"

set /P imgsize="Enter maximum image width/length (in px): "
echo.

for %%i in (*.jpeg *.jpg *.png) do (
	%convert% "%%i" -resize "%imgsize%x%imgsize%>" "%%~dpni-%imgsize%px.jpg"
	%stripper% "%%~dpni-%imgsize%px.jpg" 
	%jpegoptim% --strip-all "%%~dpni-%imgsize%px.jpg" 
)

exit
