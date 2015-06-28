@echo off

powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-ChildItem *.gif | Rename-Item -newname {$_.LastWriteTime.toString('yyyy-MM-dd_HHmmss') + '.gif'}"

pause