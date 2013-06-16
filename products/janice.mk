# Inherit AOSP device configuration for janice.
$(call inherit-product, device/samsung/janice/full_janice.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/revolt/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/revolt/configs/gsm.mk)

# Janice overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/janice

# Setup device specific product configuration.
PRODUCT_NAME := revolt_janice
PRODUCT_DEVICE := janice
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9070

# Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9070 TARGET_DEVICE=GT-I9070 BUILD_FINGERPRINT=samsung/GT-I9070/GT-I9070:4.1.2/JZO54K/I9070XXLPY:user/release-keys PRIVATE_BUILD_DESC="samsung/GT-I9070/GT-I9070:4.1.2/JZO54K/I9070XXLPY:user/release-keys"

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_mdpi

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/mdpi/bootanimation.zip:system/media/bootanimation.zip
