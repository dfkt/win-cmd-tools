@echo off

REM give image files their real extension - http://www.imagemagick.org/script/escape.php
set identify="%programfiles%\ImageMagick\identify.exe"
for %%i in (*) do (
	%identify% -format "%%t.%%m" "%%i" > "_identify.txt"
	for /f %%f in (_identify.txt) do (
		ren "%%i" "%%f"
	)
	cls
)

REM rename .jpeg to .jpg
for %%i in (*.jpeg) do (
	ren "%%i" "%%~ni.jpg" >nul
)

REM rename .tiff to .tif
for %%i in (*.tiff) do (
	ren "%%i" "%%~ni.tif" >nul
)

REM rename filename+extension to lowercase - http://superuser.com/a/412413
REM for /f "tokens=*" %%f in ('dir /l/b/a-d') do (
	REM rename "%%f" "%%f"
REM )

REM rename file extension to lowercase - http://stackoverflow.com/a/12749979
setlocal enableDelayedExpansion
for %%i in (*) do if "%%~xi" neq "" (
  set "ext=%%~xi"
  for %%c in (a b c d e f g h i j k l m n o p q r s t u v w x y z) do set "ext=!ext:%%c=%%c!"
  ren "%%i" "%%~ni!ext!"
)
endlocal

del "_identify.txt"

exit
