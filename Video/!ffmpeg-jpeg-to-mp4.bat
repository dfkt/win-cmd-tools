@echo off

REM "not divisible by 2" - http://stackoverflow.com/questions/20847674/ffmpeg-libx264-height-not-divisible-by-2
REM input file naming: img001.jpg, img002.jpg, ...

ffmpeg -framerate 15 -i "img%%03d.jpg" -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -c:v libx264 -r 30 -pix_fmt yuv420p out.mp4

pause
