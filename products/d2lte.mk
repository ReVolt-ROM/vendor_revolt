# Inherit AOSP device configuration for d2lte.
$(call inherit-product, device/samsung/d2lte/full_d2lte.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/revolt/configs/gsm.mk) 

# Inherit ReVolt common bits
$(call inherit-product, vendor/revolt/configs/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := revolt_d2lte
PRODUCT_DEVICE := d2att

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip
