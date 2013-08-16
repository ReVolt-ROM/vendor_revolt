# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/geespr/full_geespr.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/revolt/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/revolt/configs/cdma.mk)

# Geespr Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/common

# Setup device specific product configuration.
PRODUCT_NAME := revolt_geespr
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := geespr
PRODUCT_MODEL := LG-LS970
PRODUCT_MANUFACTURER := LGE

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=geehrc4g_spr_us BUILD_FINGERPRINT=lge/geehrc4g_spr_us/geehrc4g:4.1.2/JZO54K/LS970ZVB.1360739022:user/release-keys PRIVATE_BUILD_DESC="geehrc4g_spr_us-user 4.1.2 JZO54K LS970ZVB.1360739022 release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi
