@echo off

set /p folderinput="How many folders? (10-99): "

set _startnum1=1
set _endnum1=9
for /l %%i in (%_startnum1%,1,%_endnum1%) do if not exist "%%i" md "00%%i"

set _startnum2=10
set _endnum2=%folderinput%
for /l %%j in (%_startnum2%,1,%_endnum2%) do if not exist "%%j" md "0%%j"

exit
