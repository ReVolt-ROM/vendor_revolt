# Inherit AOSP device configuration for jfltevzw.
$(call inherit-product, device/samsung/jfltevzw/full_jfltevzw.mk)

# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/revolt/configs/vzw.mk)

# Inherit ReVolt common bits.
$(call inherit-product, vendor/revolt/configs/common.mk)

# Samsung Galaxy S4 Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/i9500

# Setup device specific product configuration.
PRODUCT_NAME := revolt_jfltevzw
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := jfltevzw
PRODUCT_MODEL := SCH-I545
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltevzw TARGET_DEVICE=jfltevzw BUILD_FINGERPRINT="samsung/jfltevzw/jfltevzw:4.2.2/JDQ39/I545VRUAMDK:user/release-keys"
PRIVATE_BUILD_DESC="jfltevzw-user 4.2.2 JDQ39 I545VRUAMDK release-keys"

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xxhdpi

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip
