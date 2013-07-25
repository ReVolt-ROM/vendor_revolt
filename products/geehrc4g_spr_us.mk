# Inherit AOSP device configuration for m7tmo.
$(call inherit-product, device/lge/geehrc4g_spr_us/full_geehrc4g_spr_us.mk)

# Inherit common product files.
$(call inherit-product, vendor/revolt/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/revolt/configs/gsm.mk)

# geehrc4g_spr_us Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/gee

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration.
PRODUCT_NAME := revolt_geehrc4g_spr_us
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := geehrc4g_spr_us
PRODUCT_MODEL := LG-LS970
PRODUCT_MANUFACTURER := LGE

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=geehrc4g_spr_us BUILD_FINGERPRINT=lge/geehrc4g_spr_us/geehrc4g:4.1.2/JZO54K/LS970ZVB.1360739022:user/release-keys PRIVATE_BUILD_DESC="geehrc4g_spr_us-user 4.1.2 JZO54K LS970ZVB.1360739022 release-keys"

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi
