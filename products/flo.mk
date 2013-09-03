# Inherit AOSP device configuration for flo
$(call inherit-product, device/asus/grouper/full_flo.mk)

# Inherit ReVolt common_tablet bits
$(call inherit-product, vendor/revolt/configs/common_tablet.mk)

# Flo Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/flo

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xxhdpi

# Setup device specific product configuration.
PRODUCT_NAME := revolt_grouper
PRODUCT_BRAND := Google
PRODUCT_DEVICE := flo
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/flo:4.3/JOP40C/527662:user/release-keys"
PRIVATE_BUILD_DESC="nakasi-user 4.3 JOP40C 527662 release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip
