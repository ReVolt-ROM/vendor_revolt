# Inherit AOSP device configuration for mako.
$(call inherit-product, device/htc/m7zpr/device.mk)

# Inherit common product files.
$(call inherit-product, vendor/revolt/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/revolt/configs/gsm.mk)

# M7 Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/m7

# Setup device specific product configuration.
PRODUCT_NAME := revolt_m7spr
PRODUCT_BRAND := htc
PRODUCT_DEVICE := m7spr
PRODUCT_MODEL := HTC One
PRODUCT_MANUFACTURER := HTC

# FingerPrint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7wls BUILD_ID=JZO54K BUILD_FINGERPRINT="htc/m7wls/m7wls:4.1.2/JZO54K/166937.7:user/release-keys" PRIVATE_BUILD_DESC="1.29.651.7 CL166937 release-keys"

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xxhdpi

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xxhdpi/bootanimation.zip:system/media/bootanimation.zip

