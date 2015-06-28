@echo off

title PNGGauntlet

set stripper="%portable%\Stripper\Stripper"
set pngout="%portable%\PNGout\pngout"
set optipng="%portable%\OptiPNG\optipng"
set deflopt="%portable%\DeflOpt\DeflOpt"
set exiftool="%portable%\ExifTool\exiftool"
set exiftoolcomment="0x"

for /r %%i in (*.png) do (
	echo ***                                               ***
	echo ***                   STRIPPER                    ***
	echo ***                                               ***
	echo.
	echo Stripping "%%~nxi" ...
	echo.
	echo.
	echo.
	%stripper% "%%i" 
	echo ***                                               ***
	echo ***                    PNGOUT                     ***
	echo ***                                               ***
	echo. 
	%pngout% "%%i" 
	echo. 
	echo. 
	echo. 
	echo ***                                               ***
	echo ***                   OptiPNG                     ***
	echo ***                                               ***
	echo. 
	%optipng% -o7 "%%i" 
	echo. 
	%deflopt% "%%i" 
	echo.
	echo.
	echo.
	echo ***                                               ***
	echo ***               EXIFTOOL COMMENT                ***
	echo ***                                               ***
	echo.
	%exiftool% -Comment=%exiftoolcomment% -overwrite_original "%%i" 
	echo. 
	echo. 
	echo. 
	echo *****************************************************
	echo. 
	echo. 
	echo. 
)

pause
