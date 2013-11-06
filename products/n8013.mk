# Inherit AOSP device configuration for n8013
$(call inherit-product, device/samsung/n8013/full_n8013.mk)

# Inherit ReVolt common bits
$(call inherit-product, vendor/revolt/configs/common.mk)

# N8013 Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/n8013

# Setup device specific product configuration
PRODUCT_NAME := revolt_n8013
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := n8013
PRODUCT_MODEL := GT-N8013
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-N8013 TARGET_DEVICE=GT-N8013 BUILD_FINGERPRINT="samsung/p4noterfxx/p4noterf:4.0.4/IMM76D/N8000XWALG9:user/release-keys" PRIVATE_BUILD_DESC="p4noterfxx-user 4.0.4 IMM76D N8000XWALG9 release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip
