# Inherit AOSP device configuration for i9500.
$(call inherit-product, device/samsung/i9500/full_i9500.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/revolt/configs/gsm.mk)

# Inherit common product files.
$(call inherit-product, vendor/revolt/configs/common.mk)

# Samsung Galaxy S4 Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/i9500

# Setup device specific product configuration.
PRODUCT_NAME := revolt_i9500
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := i9500
PRODUCT_MODEL := GT-I9500
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ja3gxx TARGET_DEVICE=ja3g BUILD_FINGERPRINT="samsung/ja3gxx/ja3g:4.2.2/JDQ39/I9500XXUAMDK:user/release-keys" PRIVATE_BUILD_DESC="ja3gxx-user 4.2.2 JDQ39 I9500XXUAMDK release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip
