@echo off

for /d %%f in (*) do (
	echo %%f
	ren "%%f\index-1.gif" "%%f.gif"
)

pause
