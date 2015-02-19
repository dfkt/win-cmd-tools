@echo off

"%portable%\x264\x264.exe" --preset veryfast --tune animation --crf 19 -o %1.8bit.mkv %1

pause
