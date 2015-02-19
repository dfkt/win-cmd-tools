@echo off

title APK Batch Rename Tool v1.10 by PhSorx (modified by dfkt)

echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo +                                                            +
echo +  APK Batch Rename Tool v1.10 by PhSorx (modified by dfkt)  +
echo +                                                            +
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.

for /f %%i in ("*.apk") do (
	if exist "%%i" (
		goto process
	) else (
		echo No APKs found!
		echo.
		pause
		goto :EOF
	)
)

:process

for %%f in (*.apk) do (
	echo Processing %%~nxf ...
	move /y "%%f" "%%f.bak"
	echo.
)

echo.
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.
echo Output:
echo.

for %%f in (*.bak) do call .\tools\apkrename "%%f"

echo.
echo.
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo.
echo.
echo Completed.
echo.

pause
