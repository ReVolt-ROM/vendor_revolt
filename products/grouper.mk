# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit ReVolt common_tablet bits
$(call inherit-product, vendor/revolt/configs/common_tablet.mk)

# Grouper Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/grouper

# Setup device specific product configuration.
PRODUCT_NAME := revolt_grouper
PRODUCT_BRAND := Google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

# Build FingerPrint
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=nakasi BUILD_FINGERPRINT=google/nakasi/grouper:4.4.3/KTU84L/1148727:user/release-keys PRIVATE_BUILD_DESC="nakasi-user 4.4.3 KTU84L 1148727 release-keys" BUILD_NUMBER=573038

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip
