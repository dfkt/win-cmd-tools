@echo off

set "epubcheck=%portable%\ePubCheck\epubcheck-3.0.1.jar"
set "logfile=.\!epubcheck.log"

for /r %%i in (*.epub) do (
	REM java -jar %epubcheck% "%%i" -quiet -out "!epubcheck-%%~ni.xml"
	java -jar %epubcheck% "%%i" >> "%logfile%" 2>&1
)

exit
