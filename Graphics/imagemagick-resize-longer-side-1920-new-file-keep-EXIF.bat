@echo off

set convert="%ProgramFiles%\ImageMagick\convert.exe"
set jpegoptim="%portable%\JPEGOptim\jpegoptim"

for %%i in (*.jpeg *.jpg *.png) do (
	%convert% "%%i" -resize "1920x1920>" "%%~dpni-1920px.jpg"
	%jpegoptim% "%%~dpni-1280px.jpg"
)

exit
