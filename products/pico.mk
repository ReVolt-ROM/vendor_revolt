# Device Overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/pico/overlay

# Inherit some common Revolt stuff.
$(call inherit-product, vendor/revolt/configs/common_small.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Inherit device configuration
$(call inherit-product, device/htc/pico/pico.mk)

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_mdpi

# Product name
PRODUCT_NAME := revolt_pico
PRODUCT_BRAND := htc_europe
PRODUCT_DEVICE := pico
PRODUCT_MODEL := HTC Explorer A310e
PRODUCT_MANUFACTURER := HTC

# Finger Print
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=pico BUILD_ID=JSS15J BUILD_FINGERPRINT=htc_europe/htc_pico/pico:2.3.5/GRJ90/207463.1:user/release-keys
PRIVATE_BUILD_DESC="1.28.401.1 CL207463 release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/mdpi/bootanimation.zip:system/media/bootanimation.zip
