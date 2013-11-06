# Inherit AOSP device configuration for xt897c.
$(call inherit-product, device/motorola/xt897c/full_xt897c.mk)

# Inherit common product files.
$(call inherit-product, vendor/revolt/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/motorola/xt897/overlay

# Setup device specific product configuration.
PRODUCT_NAME := revolt_xt897c
PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := xt897c
PRODUCT_MODEL := Photon Q CDMA
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_BRAND=motorola PRODUCT_NAME=xt897 BUILD_PRODUCT=xt897
BUILD_FINGERPRINT="motorola/XT897_us_spr/asanti_c:4.1.2/9.8.2Q-122_XT897_FFW-5/6:user/release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/hdpi/bootanimation.zip:system/media/bootanimation.zip
