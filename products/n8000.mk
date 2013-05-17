# Inherit AOSP device configuration for n8000
$(call inherit-product, device/samsung/n8000/full_n8000.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/revolt/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/revolt/configs/gsm.mk)

# N8000 Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/n8000

# Setup device specific product configuration
PRODUCT_NAME := revolt_n8000
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := n8000
PRODUCT_MODEL := GT-N8000
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-N8000 TARGET_DEVICE=GT-N8000 BUILD_FINGERPRINT="samsung/p4noterfxx/p4noterf:4.0.4/IMM76D/N8000XWALG9:user/release-keys" PRIVATE_BUILD_DESC="p4noterfxx-user 4.0.4 IMM76D N8000XWALG9 release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_n8000
