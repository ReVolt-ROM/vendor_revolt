# Inherit AOSP device configuration for n7000.
$(call inherit-product, device/samsung/n7000/full_n7000.mk)

# Inherit ReVolt common bits.
$(call inherit-product, vendor/revolt/configs/common.mk)

# Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/n7000

# Setup device specific product configuration.
PRODUCT_DEVICE := n7000
PRODUCT_NAME := revolt_n7000
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-N7000

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-N7000 TARGET_DEVICE=GT-N7000 BUILD_FINGERPRINT=samsung/GT-N7000/GT-I9100:4.1.1/JRO03H/ZCLP6:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.1.1 JRO03H ZCLP6 release-keys"
PRODUCT_RELEASE_NAME := n7000

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# PA OVERLAY_TARhGET
OVERLAY_TARGET := pa_xhdpi
