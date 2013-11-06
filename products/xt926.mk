# Inherit AOSP device configuration for xt926.
$(call inherit-product, device/motorola/xt926/full_xt926.mk)

# Inherit common product files.
$(call inherit-product, vendor/revolt/configs/common.mk)

# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/revolt/configs/vzw.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/motorola/xt926/overlay

# Setup device specific product configuration.
PRODUCT_NAME := revolt_xt926
PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := xt926
PRODUCT_MODEL := Droid Razr HD
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=xt926_verizon TARGET_DEVICE=xt926
BUILD_FINGERPRINT="motorola/XT926_verizon/vanquish:4.1.2/9.8.1Q-62_VQW_MR-2/6:user/release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip
