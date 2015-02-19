@echo off

powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-ChildItem *.jpg | Rename-Item -newname {$_.LastWriteTime.toString('yyyy-MM-dd_HHmmss') + '.jpg'}"

pause