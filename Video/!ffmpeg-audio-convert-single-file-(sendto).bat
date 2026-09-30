@echo off

set "ffmpeg=C:\Portable\FFmpeg\ffmpeg.exe"

:again

set FILENAME="%~dpnx1"
if "%~dpnx1" == "" goto done

	%ffmpeg% -i "%~dpnx1" -vcodec copy "%~dpn1-FIXED.mkv"

shift
goto again

:done

exit
