# Inherit AOSP device configuration for flo
$(call inherit-product, device/asus/flo/full_flo.mk)

# Inherit ReVolt common_tablet bits
$(call inherit-product, vendor/revolt/configs/common_tablet.mk)

# Flo Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/flo

# Setup device specific product configuration.
PRODUCT_NAME := revolt_flo
PRODUCT_BRAND := Google
PRODUCT_DEVICE := flo
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

# FingerPrint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razor BUILD_FINGERPRINT=google/razor/flo:4.4.2/KOT49H/937116:user/release-keys PRIVATE_BUILD_DESC="razor-user 4.4.2 KOT49H 937116 release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip
