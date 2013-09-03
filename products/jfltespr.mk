# Inherit AOSP device configuration for jfltespr.
$(call inherit-product, device/samsung/jfltespr/full_jfltespr.mk)

# Inherit ReVolt Common bits
$(call inherit-product, vendor/revolt/configs/common.mk)

# Samsung Galaxy S4 Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/i9500

# Setup device specific product configuration.
PRODUCT_NAME := revolt_jfltespr
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := jfltespr
PRODUCT_MODEL := SPH-L720
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltetspr TARGET_DEVICE=jfltespr BUILD_FINGERPRINT="samsung/jfltespr/jfltespr:4.2.2/JDQ39/L720VPUAMDC:user/release-keys" PRIVATE_BUILD_DESC="jfltespr-user 4.2.2 JDQ39 L720VPUAMDC release-keys"

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xxhdpi

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip

