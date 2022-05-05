#!/usr/bin/env bash
# Dummy way to install MicroG GSM core 
# This is a test script and will be rewritten in the future


adb shell mkdir -p /system/priv-app/GmsCore/
adb shell chmod 0755 /system/priv-app/GmsCore/
adb push GmsCore.apk /system/priv-app/GmsCore/GmsCore.apk
adb shell chmod 0644 /system/priv-app/GmsCore/GmsCore.apk

adb push privapp-permissions-microg.xml /system/etc/permissions/privapp-permissions-microg.xml
adb shell chmod 0644 /system/etc/permissions/privapp-permissions-microg.xml
adb push sysconfig-microg.xml /system/etc/sysconfig/sysconfig-microg.xml
adb shell chmod 0644 /system/etc/sysconfig/sysconfig-microg.xml

adb push 85-microg.sh /system/addon.d/
adb shell chmod 0755 /system/addon.d/85-microg.sh

