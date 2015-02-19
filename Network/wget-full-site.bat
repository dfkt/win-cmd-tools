@echo off

set /p "domain=Domain (example.tld): "
set /p "structure=Structure (example.tld/structure/): "

wget --recursive --no-clobber --page-requisites --html-extension --convert-links --restrict-file-names=windows --domains "%domain%" --no-parent "%structure%"

pause
