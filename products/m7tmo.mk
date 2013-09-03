# Inherit AOSP device configuration for m7tmo.
$(call inherit-product, device/htc/m7tmo/full_m7tmo.mk)

# Inherit ReVolt common bits.
$(call inherit-product, vendor/revolt/configs/common.mk)

# M7 Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/m7

# Setup device specific product configuration.
PRODUCT_NAME := revolt_m7tmo
PRODUCT_BRAND := htc
PRODUCT_DEVICE := m7tmo
PRODUCT_MODEL := HTC One
PRODUCT_MANUFACTURER := HTC

# FingerPrint
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=htc_m7 BUILD_ID=JZO54K BUILD_FINGERPRINT="htc/m7/m7:4.1.2/JZO54K/166937.7:user/release-keys" PRIVATE_BUILD_DESC="1.29.651.7 CL166937 release-keys"
PRODUCT_RELEASE_NAME := m7tmo

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xxhdpi

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip
