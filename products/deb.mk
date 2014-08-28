# Inherit ReVolt common_tablet bits
$(call inherit-product, vendor/revolt/configs/common_tablet.mk)

# Inherit device configuration
$(call inherit-product, device/asus/deb/full_deb.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := deb
PRODUCT_NAME := revolt_deb
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

# FingerPrint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razorg BUILD_FINGERPRINT=google/razorg/deb:4.4.2/KOT49H/937116:user/release-keys PRIVATE_BUILD_DESC="razorg-user 4.4.2 KOT49H 937116 release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip
