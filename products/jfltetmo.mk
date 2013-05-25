# Inherit AOSP device configuration for t0lte.
$(call inherit-product, device/samsung/jfltetmo/full_jfltetmo.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/revolt/configs/gsm.mk)

# Inherit Common bits
$(call inherit-product, vendor/revolt/configs/common.mk)

# Samsung Galaxy S4 Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/i9500

# Setup device specific product configuration.
PRODUCT_NAME := revolt_jfltetmo
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := jfltetmo
PRODUCT_MODEL := SGH-M919
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltetmo TARGET_DEVICE=jfltetmo BUILD_FINGERPRINT="samsung/jfltetmo/jfltetmo:4.2.2/JDQ39/M919UVUAMDB:user/release-keys" PRIVATE_BUILD_DESC="jfltetmo-user 4.2.2 JDQ39 M919UVUAMDB release-keys"
PRODUCT_RELEASE_NAME := jfltetmo

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xxhdpi

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xxhdpi/bootanimation.zip:system/media/bootanimation.zip

