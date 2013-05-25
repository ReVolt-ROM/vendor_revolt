# Inherit AOSP device configuration for i9500.
$(call inherit-product, device/samsung/i9500/full_i9500.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/revolt/configs/gsm.mk)

# Inherit Common bits
$(call inherit-product, vendor/revolt/configs/common.mk)

# Samsung Galaxy S4 Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/i9500

# Setup device specific product configuration.
PRODUCT_NAME := revolt_i9500
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := i9500
PRODUCT_MODEL := GT-I9500
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=i9500 TARGET_DEVICE=i9500 BUILD_FINGERPRINT="samsung/i9500/i9500:4.2.2/JDQ39/M919UVUAMDB:user/release-keys" PRIVATE_BUILD_DESC="i9500-user 4.2.2 JDQ39 M919UVUAMDB release-keys"
PRODUCT_RELEASE_NAME := i9500

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xxhdpi

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xxhdpi/bootanimation.zip:system/media/bootanimation.zip

