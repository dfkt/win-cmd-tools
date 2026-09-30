@echo off

:: Put this script in the Music folder of the audio player - not the root folder - or bad things will happen!

choice /c yn /m "Are you sure you want to delete junk files from your audio player"
cls
if errorlevel 2 goto scriptno
if errorlevel 1 goto scriptyes

:scriptyes
del /s /f cover0*.jpg cover1*.jpg cover2*.jpg cover3*.jpg *.png *.log *.cue *.nfo *.rtf *.doc *.pdf *.txt *.url fssort.ini desktop.ini *.sfv *.md5 *.m3u *.m3u8 thumbs.db *foo_dr.txt Album*_Small.jpg Album*_Large.jpg *.sfk *DS_Store* .Trashes

:scriptno
exit
