@echo off

for %%i in (*.avi *.flv *.mp4 *.mkv *.wmv *.swf) do (
	mkdir "%%~ni-frames"
	ffmpeg -i "%%i" -vf scale=320:-1,format=rgb8,format=rgb24 "%%~ni-frames\%%~ni-%%03d.png"
	magick convert -delay 2 -loop 0 "%%~ni-frames\%%~ni-*.png" "%%~ni-1.gif"
	magick convert "%%~ni-1.gif" -layers Optimize "%%~ni.gif"
	del /q "%%~ni-1.gif"
	rmdir /s /q "%%~ni-frames"
)

exit
