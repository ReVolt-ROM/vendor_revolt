# Inherit common stuff
$(call inherit-product, vendor/revolt/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/common_tablet

