# Inherit AOSP device configuration for vs980
$(call inherit-product, device/lge/vs980/vs980.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/revolt/configs/cdma.mk)

# Inherit ReVolt common bits
$(call inherit-product, vendor/revolt/configs/common.mk)

# vs980 Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/vs980

# Setup device specific product configuration
PRODUCT_DEVICE := vs980
PRODUCT_NAME := revolt_vs980
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-VS980
PRODUCT_MANUFACTURER := lge

# FingerPrint
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=lge/g2_vzw/g2:4.2.2/JDQ39B/VS98011A.1378346052:user/release-keys PRIVATE_BUILD_DESC="g2_vzw-user 4.2.2 JDQ39B VS98011A.1378346052 release-keys"

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip
