# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/revolt/configs/gsm.mk)

# Inherit ReVolt common bits.
$(call inherit-product, vendor/revolt/configs/common.mk)

# Maguro Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/tuna

# Setup device specific product configuration.
PRODUCT_NAME := revolt_maguro
PRODUCT_BRAND := Google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_FINGERPRINT=google/yakju/maguro:4.3/JWR66Y/776638:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.3 JWR66Y 776638 release-keys"

# Maguro specific packages
PRODUCT_PACKAGES += \
    Thinkfree

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip
