@echo off

echo NirSoft Tools
echo.

setlocal enabledelayedexpansion

set num=0

for %%e in (*.exe) do (
    set /a num += 1
    set opt!num!=%%~ne
    echo !num! %%~ne
)

echo.
set /p choice="Enter Choice: "

set newchoice=opt%choice%
start !%newchoice%!

endlocal

exit