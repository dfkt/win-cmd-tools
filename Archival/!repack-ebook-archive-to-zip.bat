@echo off

REM for %%i in (*.rar *.zip) do (
for /r %%i in (*.rar) do (
	mkdir "C:\Temp\Books\%%~ni\"
	7z e "%%i" -o"C:\Temp\Books\%%~ni\"
	del /q "C:\Temp\Books\%%~ni\*.pdb"
	del /q "C:\Temp\Books\%%~ni\*.prc"
	move /y "C:\Temp\Books\%%~ni\%%~ni\*" "C:\Temp\Books\%%~ni\"
	rmdir /q /s "C:\Temp\Books\%%~ni\%%~ni\"
	7z a -tzip -mx=9 "C:\Temp\Books\%%~ni.zip" "C:\Temp\Books\%%~ni\*"
	rmdir /q /s "C:\Temp\Books\%%~ni\"
)

pause
