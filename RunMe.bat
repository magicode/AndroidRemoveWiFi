@echo off
adb kill-server
adb start-server
echo.
echo Waiting for device..
adb wait-for-device
echo.
echo Device detected!
echo.
echo R/W System..
adb shell "su -c \"mount -o rw,remount -t yaffs2 /dev/block/mtdblock3 /system\""
echo.
echo Remove WiFi..
adb shell "su -c \"rm /system/lib/modules/cfg80211.ko\""
echo.
echo Done!
pause > nul | echo Press any key to exit..