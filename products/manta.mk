# Inherit AOSP device configuration for manta
$(call inherit-product, device/samsung/manta/full_manta.mk)

# Inherit ReVolt common bits.
$(call inherit-product, vendor/revolt/configs/common.mk)

# Manta Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/manta

# Setup device specific product configuration
PRODUCT_NAME := revolt_manta
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := manta
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := samsung

# FingerPrint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mantaray BUILD_FINGERPRINT=google/mantaray/manta:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 4.2.2 JDQ39 573038 release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_manta
