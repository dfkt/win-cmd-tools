@echo off

for /r %%i in (*.tar.bz2) do (
	"%portable%\7-ZipPortable\App\7-Zip64\7z.exe" x "%%i" -o"%%~dpi"
)

for /r %%i in (*.tar) do (
	"%portable%\7-ZipPortable\App\7-Zip64\7z.exe" x "%%i" -o"%%~dpi"
)

for /r %%i in (*.tar) do (
	del /q "%%i"
)

pause
