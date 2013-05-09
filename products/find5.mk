# Inherit AOSP device configuration for mako
$(call inherit-product, device/oppo/find5/full_find5.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/revolt/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/revolt/configs/gsm.mk)

# Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/find5 

# Setup device specific product configuration
PRODUCT_NAME := revolt_find5
PRODUCT_BRAND := oppo
PRODUCT_DEVICE := find5
PRODUCT_MODEL := Find5
PRODUCT_MANUFACTURER := OPPO

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=OPPO/oppo_12069/FIND5:4.1.1/JRO03L/1362469752:user/release-keys PRIVATE_BUILD_DESC="msm8960-user 4.1.1 JRO03L eng.oppo.20130328.172033 release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_i9300
