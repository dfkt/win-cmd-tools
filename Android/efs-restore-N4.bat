@echo off

adb shell su -c mkdir /sdcard/tmp/efs

adb push "L:\Temp\Nexus 4 Backup\EFS" /sdcard/tmp/efs 

adb shell su -c dd if=/sdcard/tmp/efs/m9kefs1.img of=/dev/block/mmcblk0p8
adb shell su -c dd if=/sdcard/tmp/efs/m9kefs2.img of=/dev/block/mmcblk0p9 
adb shell su -c dd if=/sdcard/tmp/efs/m9kefs3.img of=/dev/block/mmcblk0p10 

pause
