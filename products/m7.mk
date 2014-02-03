# Inherit AOSP device configuration for m7.
$(call inherit-product, device/htc/m7/full_m7.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/revolt/configs/gsm.mk)

# Inherit ReVolt common bits.
$(call inherit-product, vendor/revolt/configs/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := revolt_m7
PRODUCT_DEVICE := m7

# FingerPrint
PRODUCT_BUILD_PROP_OVERRIDES += \
BUILD_ID=KOT49H.H1 BUILD_FINGERPRINT="htc/m7_google/m7:4.4.2/KOT49H.H1/288144:user/release-keys" \
PRIVATE_BUILD_DESC="3.62.1700.1 CL288144 release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip


