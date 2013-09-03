# Inherit AOSP device configuration for n7100.
$(call inherit-product, device/samsung/n7100/full_n7100.mk)

# Inherit ReVolt common bits.
$(call inherit-product, vendor/revolt/configs/common.mk)

# N7100 overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/n7100

# Setup device specific product configuration.
PRODUCT_DEVICE := n7100
PRODUCT_NAME := revolt_n7100
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-N7100

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t03gxx TARGET_DEVICE=t03g BUILD_FINGERPRINT="samsung/t03gxx/t03g:4.1.1/JRO03C/N7100XXALJ3:user/release-keys" PRIVATE_BUILD_DESC="t03gxx-user 4.1.1 JRO03C N7100XXALJ3 release-keys"
PRODUCT_RELEASE_NAME := n7100

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# PA OVERLAY_TARhGET
OVERLAY_TARGET := pa_n7100
