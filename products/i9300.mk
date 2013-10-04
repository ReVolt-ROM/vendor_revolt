# Inherit AOSP device configuration for galaxys3.
$(call inherit-product, device/samsung/i9300/full_i9300.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/revolt/configs/gsm.mk)

# Inherit ReVolt common bits
$(call inherit-product, vendor/revolt/configs/common.mk)

# Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/i9300

# Setup device specific product configuration.
PRODUCT_DEVICE := i9300
PRODUCT_NAME := revolt_i9300
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9300

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m0xx TARGET_DEVICE=m0 BUILD_FINGERPRINT="samsung/m0xx/m0:4.1.2/JZO54K/I9300XXDLIB:user/release-keys" PRIVATE_BUILD_DESC="m0xx-user 4.1.2 JZO54K I9300XXDLIB release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# AROMA
ifneq ($(RV_BUILD),)
AROMA := TRUE
else
#NOTHING
endif

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_i9300
