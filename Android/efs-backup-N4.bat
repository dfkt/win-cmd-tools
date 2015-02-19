@echo off

adb shell su -c mkdir /sdcard/tmp/efs

adb shell su -c dd if=/dev/block/mmcblk0p8 of=/sdcard/tmp/efs/m9kefs1.img
adb shell su -c dd if=/dev/block/mmcblk0p9 of=/sdcard/tmp/efs/m9kefs2.img
adb shell su -c dd if=/dev/block/mmcblk0p10 of=/sdcard/tmp/efs/m9kefs3.img

adb pull /sdcard/tmp/efs "L:\Temp\Nexus 4 Backup\EFS"

pause
