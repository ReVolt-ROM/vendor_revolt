# Inherit AOSP device configuration for odin
$(call inherit-product-if-exists, device/sony/odin/full_odin.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/revolt/configs/gsm.mk)

# Inherit ReVolt common bits.
$(call inherit-product, vendor/revolt/configs/common.mk)

# Odin overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/odin

# Setup device specific product configuration.
PRODUCT_NAME := revolt_odin
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := odin
PRODUCT_MODEL := C6503
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6503_1271-0336 BUILD_FINGERPRINT=Sony/C6503_1271-0336/C6503:4.1.2/10.1.A.1.434/Tfp_rw:user/release-keys PRIVATE_BUILD_DESC="C6503-user 4.1.2 10.1.A.1.434 Tfp_rw test-keys"

# skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xxhdpi
