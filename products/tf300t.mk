# Inherit AOSP device configuration for tf300t
$(call inherit-product, device/asus/tf300t/full_tf300t.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/revolt/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/revolt/configs/gsm.mk)

# tf300t Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/tf300t

# Setup device specific product configuration
PRODUCT_DEVICE := tf300t
PRODUCT_NAME := revolt_tf300t
PRODUCT_BRAND := Asus
PRODUCT_MODEL := TF300T
PRODUCT_MANUFACTURER := Asus

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=EeePad BUILD_FINGERPRINT="asus/WW_epad/EeePad:4.1.1/JRO03C/WW_epad-10.4.2.18-20121122:user/release-keys" PRIVATE_BUILD_DESC="WW_epad-user 4.1.1 JRO03C WW_epad-10.4.2.18-20121122 release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_n8000
