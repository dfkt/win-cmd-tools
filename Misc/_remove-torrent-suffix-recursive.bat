@echo off

for /r %%i in ("*.!ut" "*.!qB") do (
	move "%%~dpnxi" "%%~dpni" >nul
	echo "%%~dpni"
	echo.
)

pause
