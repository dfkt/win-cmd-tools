:: https://stackoverflow.com/questions/19104403/batch-script-to-delete-every-other-file-in-directories
@echo off
setlocal
set /p "extension=File extension (without dot): "
for /r %%D in (.) do (
  set "z=0"
  for /f %%F in ('dir /b "%%D\*.%extension%"') do (
    set /a "z+=1, r=z%%2"
    setlocal enableDelayedExpansion
    if !r! equ 0 del "%%D\%%F"
    endlocal
  )
)