# Inherit AOSP device configuration for d2att.
$(call inherit-product, device/samsung/d2att/full_d2att.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/revolt/configs/gsm.mk) 

# Inherit ReVolt common bits
$(call inherit-product, vendor/revolt/configs/common.mk)

# Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/d2att

# Setup device specific product configuration.
PRODUCT_NAME := revolt_d2att
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2att
PRODUCT_MODEL := SGH-I747
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2att TARGET_DEVICE=d2att BUILD_FINGERPRINT="samsung/d2uc/d2att:4.0.4/IMM76D/I747UCALH9:user/release-keys" PRIVATE_BUILD_DESC="d2att-user 4.0.4 IMM76D I747UCALH9 release-keys"


# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi
