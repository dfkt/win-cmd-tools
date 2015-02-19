@echo off

for /r %%i in (*.cells *.lif *.mc *.mcl *.py *.rle) do (
	7z a -tzip -mx=9 "%%i.zip" "%%i"
	del /q "%%i"
)

echo.

pause
