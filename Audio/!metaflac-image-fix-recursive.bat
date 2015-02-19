@echo off

set "metaflac=%portable%\FLAC-x64\metaflac.exe"
set "image=cover.jpg"

for /r %%i in (*.flac) do (
	cd "%%~dpi"
	if not exist "%image%" (
		%metaflac% --export-picture-to="%image%" "%%i"
		echo %%i: Exporting embedded album art to file: %image%
		echo.
	)
	%metaflac% --dont-use-padding --remove --block-type=PICTURE,PADDING "%%i"
	echo %%~dpi
	echo %%~nxi
	echo Removing padding and embedded album art
	if exist "%image%" (
		%metaflac% --import-picture-from="%image%" "%%i"
		echo Embedding album art from file: %image%
	) else (
		echo Embedding album art: No %image% file found!
	)
	echo.
	cd ..
)

pause
