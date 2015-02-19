clear

write-host "                                       " -backgroundcolor "red" -foregroundcolor "black"
start-sleep -m 50
write-host "  Junk file removal for audio players  " -backgroundcolor "red" -foregroundcolor "black"
start-sleep -m 50
write-host "                              by DFKT  " -backgroundcolor "red" -foregroundcolor "black"
start-sleep -m 50
write-host "                                       " -backgroundcolor "red" -foregroundcolor "black"
start-sleep -m 50
write-host " "

$driveletter = read-host "  Select a drive letter"
$folder = read-host "  Select a folder (wildcards accepted)"

write-host "`n  Please wait...`n"

get-childitem -path $driveletter`:\$folder -include *.bmp,*.cue,*.db,*.doc,*.gif,*.htm*,*.ini,*.jpeg,*.jpg,*.lnk,*.log,*.m3u*,*.nfo,*.pdf,*.pls,*.png,*.psd,*.rtf,*.sfv,*.txt,*.url -exclude cover.jpg,cover.bmp -force -recurse | remove-item -force -recurse -verbose

write-host "`n  Junk deleted!"

write-host "`n  Exiting in 15 seconds..."
start-sleep -s 15
