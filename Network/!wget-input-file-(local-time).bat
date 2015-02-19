@echo off

title WGET

set "wget=%portable%\WGET\wget.exe"
set "downloaddir=."
set /p "inputfile=Input text file (without .txt suffix): "

echo.

REM %wget% --continue --directory-prefix="%downloaddir%\%inputfile%" --force-directories --input-file="%downloaddir%\%inputfile%.txt" --no-host-directories --timestamping

REM %wget% --auth-no-challenge --continue --directory-prefix="%downloaddir%\%inputfile%" --force-directories --input-file="%downloaddir%\%inputfile%.txt" --keep-session-cookies --no-check-certificate --no-cookies --no-host-directories --span-hosts --timestamping --user-agent="Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0)"

%wget% --auth-no-challenge --continue --directory-prefix="%downloaddir%\%inputfile%" --input-file="%downloaddir%\%inputfile%.txt" --keep-session-cookies --no-check-certificate --no-cookies --no-host-directories --no-use-server-timestamps --span-hosts --user-agent="Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0)" --wait=1 --waitretry=1 --limit-rate=100000

echo.

pause
