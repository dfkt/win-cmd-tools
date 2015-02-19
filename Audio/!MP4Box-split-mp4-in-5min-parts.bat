@echo off

for %%i in (*.m4*) do (
	mp4box -split 300 "%%i"
)

pause