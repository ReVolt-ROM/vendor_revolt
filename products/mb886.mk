# Inherit AOSP device configuration for xt925.
$(call inherit-product, device/motorola/xt925/full_xt925.mk)

# Inherit common product files.
$(call inherit-product, vendor/revolt/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/motorola/xt925/overlay

# Setup device specific product configuration.
PRODUCT_NAME := revolt_xt925
PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := xt925
PRODUCT_MODEL := Droid Razr HD
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=xt925 
TARGET_DEVICE=xt925 
BUILD_FINGERPRINT="motorola/xt925/vanquish_u:4.0.4/7.7.1Q-144_VQL_S3-49/346380647:user/release-keys"

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip
