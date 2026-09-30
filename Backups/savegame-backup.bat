@echo off

set savestruct="%AppData%"
set savedir="HelloGames"

mkdir ".\%savedir%"
xcopy "%savestruct%\%savedir%" ".\%savedir%" /E /C /H /R /K /O /Y

exit
