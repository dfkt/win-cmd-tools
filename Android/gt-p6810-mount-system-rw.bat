@echo off
adb shell su -c mount -o rw,remount -t ext4 /dev/block/mmcblk0p8 /system
adb shell cat /proc/mounts ^| grep system
echo.
pause
