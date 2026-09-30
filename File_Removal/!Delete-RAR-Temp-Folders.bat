@echo off

for /d %%i in ("Rar$*") do (
	rd /s /q "%%i"
)

exit
