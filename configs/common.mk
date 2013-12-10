# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/dictionaries

# SuperUser
SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.cyanogenmod.superuser

# ReVolt Packages
PRODUCT_PACKAGES += \
    Apollo \
    libemoji \
#    FontSize \
#    ReVoltLauncher \
#    ReVoltPapers \
#    YouTube \
    Welcome
#    ReVoltControl

# AOKP Packages
PRODUCT_PACKAGES += \
    AOKPtips \
    AppWidgetPicker \
    CellBroadcastReceiver \
    LatinImeDictionaryPack \
    Microbes \
    Stk \
    Superuser \
    su \
    Torch

# Copy latinime for gesture typing
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# CM Packages
PRODUCT_PACKAGES += \
#    VoicePlus \
#    FMRadio \
    LockClock \
#    BluetoothExt

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    ro.ril.enable.amr.wideband=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.kernel.android.checkjni=0 \
    persist.sys.root_access=3 \
    ro.build.selinux=1 

PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/revolt/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/revolt/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf

# init.d
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/common/etc/init.local.rc:root/init.revolt.rc \
    vendor/revolt/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/revolt/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/revolt/prebuilt/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel \
    vendor/revolt/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/revolt/prebuilt/common/bin/sysinit:system/bin/sysinit

# Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
        debug.performance.tuning=1 \
        video.accelerate.hw=1 \
        persist.sys.purgeable_assets=1 \
        windowsmgr.max_events_per_sec=90 \
        ro.max.fling_velocity=12000 \
        ro.min.fling_velocity=8000 \
        pm.sleep_mode=1 \
        ro.ril.disable.power.collapse=0 \
        ro.ril.fast.dormancy.rule=0

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    libssh \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh \
    sftp \
    scp \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/revolt/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/revolt/prebuilt/common/bin/50-cm.sh:system/addon.d/50-cm.sh

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Scarabaeus.ogg \
    ro.config.notification_sound=Antimony.ogg \
    ro.config.alarm_alert=Scandium.ogg

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Inherit common build.prop overrides
-include vendor/revolt/configs/common_versions.mk

# T-Mobile theme engine
-include vendor/revolt/configs/themes_common.mk

# Bring in all audio files
include frameworks/base/data/sounds/NewAudio.mk

# Extra Ringtones
include frameworks/base/data/sounds/AudioPackageNewWave.mk

# World APN
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml
