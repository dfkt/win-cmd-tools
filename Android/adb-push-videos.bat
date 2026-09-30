rem @echo off

for %%f in (*.avi *.mp?g *.mkv *.mp4 *.srt) do adb push "%%f" "/storage/sdcard1/Video"
