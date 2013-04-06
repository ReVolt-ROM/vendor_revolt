# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell date +%Y%m%d)

ifneq ($(RV_BUILD),)
        # ReVolt Official Build Details
        PRODUCT_PROPERTY_OVERRIDES += \
                ro.goo.developerid=Johnhany97 \
                ro.goo.rom=ReVolt \
                ro.goo.version=$(DATE) \
                ro.revolt.version=ReVolt-JB-$(RV_BUILD)-$(TARGET_PRODUCT) \
                ro.goo.board=$(subst full_,,$(TARGET_PRODUCT))
else
        # ReVolt Nightly Build Details
        PRODUCT_PROPERTY_OVERRIDES += \
                ro.goo.developerid=Johnhany97 \
                ro.goo.rom=ReVoltNightlies \
                ro.goo.version=$(DATE) \
                ro.revolt.version=ReVolt-JB-$(TARGET_PRODUCT)-Nightly-$(DATE) \
                ro.goo.board=$(subst full_,,$(TARGET_PRODUCT))
endif

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
