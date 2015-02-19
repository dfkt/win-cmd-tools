@echo off

set sz="%portable%\7-ZipPortable\App\7-Zip64\7z.exe"
set convert="%programfiles%\ImageMagick\convert.exe"

REM unpack cbr/cbz archives to folders, delete original archives
for %%i in (*.cb*) do (
	%sz% -o".\%%~ni" e "%%i"
	del /q "%%i" >nul
	if exist ".\%%~ni\%%~ni" rd /s /q ".\%%~ni\%%~ni" >nul
)

REM convert png to jpeg, delete pngs
for /r %%i in (*.png) do (
	%convert% "%%i" "%%~dpni.jpg"
	del /q "%%i" >nul
)

REM pack archives to separate cbz, delete folders
for /d %%i in (*) do (
	%sz% a -tzip -mx=9 "%%i.cbz" "%%i\"
	rd /s /q "%%i" >nul
)

pause
