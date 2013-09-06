# Inherit AOSP device configuration for mb886.
$(call inherit-product, device/motorola/mb886/full_mb886.mk)

# Inherit common product files.
$(call inherit-product, vendor/revolt/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/motorola/mb886/overlay

# Setup device specific product configuration.
PRODUCT_NAME := revolt_mb886
PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := mb886
PRODUCT_MODEL := Atrix HD
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mb886 
TARGET_DEVICE=mb886
BUILD_FINGERPRINT="motorola/MB886_att/qinara:4.1.1/9.8.0Q-97_MB886_FFW-20/27:user/release-keys"

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip
