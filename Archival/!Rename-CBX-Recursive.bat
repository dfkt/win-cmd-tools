@echo off

set trid="%portable%\TrID\trid.exe"
set triddef="%portable%\TrID\cbx.trd"

for /r %%i in (*.cb*) do (
	%trid% -ce "%%i" -d:%triddef%
)

pause
