# Inherit AOSP device configuration for manta
$(call inherit-product, device/samsung/manta/full_manta.mk)

# Inherit ReVolt common bits.
$(call inherit-product, vendor/revolt/configs/common.mk)

# Manta Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/manta

# Setup device specific product configuration
PRODUCT_NAME := revolt_manta
PRODUCT_BRAND := Google
PRODUCT_DEVICE := manta
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := Samsung

# FingerPrint
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mantaray BUILD_FINGERPRINT=google/mantaray/manta:4.4.3/KTU84L/1148727:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 4.4.3 KTU84L 1148727 release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip
