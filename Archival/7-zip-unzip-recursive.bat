@echo off

for /r %%i in (*.zip) do (
	"%portable%\7-ZipPortable\App\7-Zip64\7z.exe" x "%%i" -o"%%~dpi"
)

pause
