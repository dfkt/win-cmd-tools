@echo off

title PNGGauntlet

set stripper="%portable%\Stripper\Stripper"
set pngout="%portable%\PNGout\pngout"
set optipng="%portable%\OptiPNG\optipng"
set deflopt="%portable%\DeflOpt\DeflOpt"
set exiftool="%portable%\ExifTool\exiftool"
set exiftoolcomment="0x"

:again

set FILENAME="%~dpnx1"
if "%~dpnx1" == "" goto done

echo ***                                               ***
echo ***                   STRIPPER                    ***
echo ***                                               ***
echo.
echo Stripping %~nx1 ...
echo.
echo.
echo.
%stripper% %1
echo ***                                               ***
echo ***                    PNGOUT                     ***
echo ***                                               ***
echo.
%pngout% %1
echo.
echo.
echo.
echo ***                                               ***
echo ***                   OptiPNG                     ***
echo ***                                               ***
echo.
%optipng% -o7 %1
echo.
%deflopt% %1
echo.
echo.
echo.
echo ***                                               ***
echo ***               EXIFTOOL COMMENT                ***
echo ***                                               ***
echo.
%exiftool% -Comment=%exiftoolcomment% -overwrite_original %1
echo.
echo.
echo.
echo *****************************************************
echo.
echo.
echo.

shift
goto again

:done

pause
