@echo off

title PNGGauntlet

set pngout="%portable%\PNGout\pngout"
set deletexp="%portable%\DeleteXP\DeleteXP"
set stripper="%portable%\Stripper\Stripper"
set optipng="%portable%\OptiPNG\optipng"
set deflopt="%portable%\DeflOpt\DeflOpt"
set exiftool="%portable%\ExifTool\exiftool"
set exiftoolcomment="0x"

:again

set FILENAME="%~dpnx1"
if "%~dpnx1" == "" goto done

echo ***                                               ***
echo ***                    PNGOUT                     ***
echo ***                                               ***
echo.
%pngout% %1 /kp
echo.
echo.
echo.
echo ***                                               ***
echo ***                   DELETEXP                    ***
echo ***                                               ***
echo.
%deletexp% %1
echo.
echo.
echo.
echo.
echo ***                                               ***
echo ***                   STRIPPER                    ***
echo ***                                               ***
echo.
echo Stripping %~n1.png ...
%stripper% "%~dpn1.png"
echo.
echo.
echo.
echo ***                                               ***
echo ***                   OptiPNG                     ***
echo ***                                               ***
echo.
%optipng% -o7 "%~dpn1.png"
echo.
%deflopt% "%~dpn1.png"
echo.
echo.
echo.
echo ***                                               ***
echo ***               EXIFTOOL COMMENT                ***
echo ***                                               ***
echo.
%exiftool% -Comment=%exiftoolcomment% -overwrite_original "%~dpn1.png"
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
