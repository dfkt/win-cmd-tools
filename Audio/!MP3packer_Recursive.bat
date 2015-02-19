@echo off

set "logfile=D:\mp3packer.log"

if exist %logfile% del /q %logfile%

for /r %%i in (*.mp3) do (
	"%portable%\WinMP3Packer\mp3packer64.exe" -z -u -a "-MP3PACKER" --keep-ok out --keep-bad in --copy-time "%%i"
	if exist "%%~ni-MP3PACKER.mp3" echo Failed^: %%~dfni >> %logfile%
	if exist "%%~ni-MP3PACKER.mp3" move /y "%%~ni-MP3PACKER.mp3" "%%i"
)

if exist %logfile% %logfile%

exit
