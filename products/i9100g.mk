# Inherit AOSP device configuration for i9100g.
$(call inherit-product, device/samsung/i9100g/full_i9100g.mk)

# Inherit ReVolt common bits
$(call inherit-product, vendor/revolt/configs/common.mk)

# Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/i9100

# Setup device specific product configuration.
PRODUCT_DEVICE := i9100g
PRODUCT_NAME := revolt_i9100g
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9100G
PRODUCT_RELEASE_NAME := GT-I9100G

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100G TARGET_DEVICE=GT-I9100G BUILD_FINGERPRINT=samsung/GT-I9100G/GT-I9100G:4.1.2/JZO54K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9100G-user 4.1.2 JZO54K XXLPQ release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/hdpi/bootanimation.zip:system/media/bootanimation.zip

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_hdpi
