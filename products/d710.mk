# Inherit AOSP device configuration for d710.
$(call inherit-product, device/samsung/d710/full_d710.mk)

# Inherit ReVolt common bits
$(call inherit-product, vendor/revolt/configs/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := revolt_d710
PRODUCT_DEVICE := d710
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SPH-D710

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SPH-D710 TARGET_DEVICE=SPH-D710 BUILD_FINGERPRINT=samsung/SPH-D710/SPH-D710:4.2.2/JZO54K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="SPH-D710-user 4.2.2 JZO54K XXLPQ release-keys"
PRODUCT_RELEASE_NAME := GT-I9100

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_hdpi
PA_DIFF_PREF := pa_fix

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/hdpi/bootanimation.zip:system/media/bootanimation.zip
