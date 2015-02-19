@echo off

set         convert="%programfiles%\ImageMagick\convert.exe"
set        deletexp="%portable%\DeleteXP\DeleteXP.exe"
set        stripper="%portable%\Stripper\Stripper"
set          pngout="%portable%\PNGout\pngout"
set         optipng="%portable%\OptiPNG\optipng"
set         deflopt="%portable%\DeflOpt\DeflOpt"
set        exiftool="%portable%\ExifTool\exiftool"
set exiftoolcomment="0x"

if exist (*.tif?) goto tif else goto bmp

:tif
for %%i in (*.tif?) do (
	echo ***                                               ***
	echo ***                   CONVERT                     ***
	echo ***                                               ***
	echo.
	%convert% "%%i" "%%~dpni.bmp"
	echo.
	echo.
	echo.
	echo ***                                               ***
	echo ***                   DELETEXP                    ***
	echo ***                                               ***
	echo.
	%deletexp% "%%i"
	echo.
	echo.
	echo.
	echo *****************************************************
	echo.
	echo.
	echo.
)

:bmp
for %%i in (*.bmp) do (
	echo ***                                               ***
	echo ***                    PNGOUT                     ***
	echo ***                                               ***
	echo.
	%pngout% "%%i"
	echo.
	echo.
	echo.
	echo ***                                               ***
	echo ***                   DELETEXP                    ***
	echo ***                                               ***
	echo.
	%deletexp% "%%i"
	echo.
	echo.
	echo.
	echo.
	echo ***                                               ***
	echo ***                   STRIPPER                    ***
	echo ***                                               ***
	echo.
	echo Stripping "%%~ni.png" ...
	%stripper% "%%~ni.png"
	echo.
	echo.
	echo.
	echo ***                                               ***
	echo ***                   OptiPNG                     ***
	echo ***                                               ***
	echo.
	%optipng% -o7 "%%~ni.png"
	echo.
	%deflopt% "%%~ni.png"
	echo.
	echo.
	echo.
	echo ***                                               ***
	echo ***               EXIFTOOL COMMENT                ***
	echo ***                                               ***
	echo.
	%exiftool% -Comment=%exiftoolcomment% -overwrite_original "%%~ni.png"
	echo.
	echo.
	echo.
	echo *****************************************************
	echo.
	echo.
	echo.
)

pause
