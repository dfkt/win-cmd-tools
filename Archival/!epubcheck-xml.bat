@echo off

set "epubcheck=%portable%\ePubCheck\epubcheck-3.0.1.jar"

for /r %%i in (*.epub) do (
	java -jar %epubcheck% "%%i" -quiet -out "%%~ni [epubcheck].xml"
)

exit
