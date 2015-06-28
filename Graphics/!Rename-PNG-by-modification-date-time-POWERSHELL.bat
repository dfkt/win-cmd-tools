@echo off

powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-ChildItem *.png | Rename-Item -newname {$_.LastWriteTime.toString('yyyy-MM-dd_HHmmss') + '.png'}"

pause