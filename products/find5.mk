# Inherit AOSP device configuration for mako
$(call inherit-product, device/oppo/find5/full_find5.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/revolt/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/revolt/configs/gsm.mk)

# Setup device specific product configuration
PRODUCT_NAME := revolt_find5
PRODUCT_BRAND := oppo
PRODUCT_DEVICE := find5
PRODUCT_MODEL := Find5
PRODUCT_MANUFACTURER := OPPO

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.2/JOP40C/527662:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2 JOP40C 527662 release-keys" BUILD_NUMBER=527662

PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi
