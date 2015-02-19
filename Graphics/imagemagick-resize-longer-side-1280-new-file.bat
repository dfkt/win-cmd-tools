@echo off

set convert="%ProgramFiles%\ImageMagick\convert.exe"
set stripper="%portable%\Stripper\Stripper"
set jpegoptim="%portable%\JPEGOptim\jpegoptim"

for %%i in (*.jpeg *.jpg *.png *.psd) do (
	%convert% "%%i" -resize "1280x1280>" "%%~dpni-1280px.jpg"
	%stripper% "%%~dpni-1280px.jpg" 
	%jpegoptim% --strip-all "%%~dpni-1280px.jpg" 
)

exit
