$(call inherit-product-if-exists, vendor/htc/m8/m8-vendor.mk)

# Inherit AOSP device configuration for m8.
$(call inherit-product, device/htc/m8/full_m8.mk)

# Inherit ReVolt common bits.
$(call inherit-product, vendor/revolt/configs/common.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/revolt/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := revolt_m8
PRODUCT_BRAND := google
PRODUCT_DEVICE := m8
PRODUCT_MODEL := HTC One m8
PRODUCT_MANUFACTURER := HTC

# FingerPrint
PRODUCT_BUILD_PROP_OVERRIDES += \
       BUILD_ID=KOT49H BUILD_FINGERPRINT="htc/htc_europe/htc_m8:4.4.2/KOT49H/325784.5:user/release-keys" \
       PRIVATE_BUILD_DESC="1.54.401.5 CL325784 release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip
