@echo off

title PNGGauntlet

set pngout="%portable%\PNGout\pngout"
set deletexp="%portable%\DeleteXP\DeleteXP"
set stripper="%portable%\Stripper\Stripper"
set optipng="%portable%\OptiPNG\optipng"
set deflopt="%portable%\DeflOpt\DeflOpt"
set exiftool="%portable%\ExifTool\exiftool"
set exiftoolcomment="0x"

for /r %%i in (*.gif) do (
	echo ***                                               ***
	echo ***                    PNGOUT                     ***
	echo ***                                               ***
	echo. 
	%pngout% "%%i" /kp 
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
