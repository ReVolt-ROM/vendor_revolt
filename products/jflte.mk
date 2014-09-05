# Inherit AOSP device configuration for jflte.
$(call inherit-product, device/samsung/jflte/full_jflte.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/revolt/configs/gsm.mk)

# Inherit ReVolt common bits
$(call inherit-product, vendor/revolt/configs/common.mk)

#Unified device flag for Verizon permissions
VZW_UNIFIED := true

# Inherit common Verizon Wireless perms & lib
$(call inherit-product, vendor/revolt/configs/vzw.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := jflte
PRODUCT_NAME := revolt_jflte

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip
