# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

DATE = $(shell date +%Y%m%d)
RV_BRANCH=kitkat

# ReVoltOTA
# Version info
ROM_VERSION_MAJOR := 1
ROM_VERSION_MINOR := 0
ROM_VERSION_MAINTENANCE := 
ROM_VERSION_TAG := BETA
VERSION := $(ROM_VERSION_MAJOR).$(ROM_VERSION_MINOR)$(ROM_VERSION_MAINTENANCE)

export ROM_VERSION := $(VERSION)-$(DATE)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversionota=$(ROM_VERSION) \
    ro.revoltota.version=$(VERSION)

ifneq ($(RV_BUILD),)
# ReVolt Official Build Details
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.goo.developerid=johnhany97 \
        ro.goo.rom=ReVolt \
        ro.goo.version=$(DATE) \
        ro.revolt.version=revolt_$(TARGET_PRODUCT)-$(VERSION)-RC-$(DATE)
else
ifneq ($(RV_BETA),)
# ReVolt Nightly Build Details
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.goo.developerid=johnhany97 \
        ro.goo.rom=ReVoltNightlies \
        ro.goo.version=$(DATE) \
        ro.revolt.version=revolt_$(TARGET_PRODUCT)-$(RV_BUILD)-BETA-$(DATE)
else
ifneq ($(RV_ALPHA),)
# ReVolt Alpha Build Details
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.goo.developerid=johnhany97 \
        ro.goo.rom=ReVoltALPHA \
        ro.goo.version=$(DATE) \
        ro.revolt.version=revolt_$(TARGET_PRODUCT)-ALPHA-$(DATE)
else
# ReVolt UnOfficial Build Details
    PRODUCT_PROPERTY_OVERRIDES += \
	ro.goo.version=$(DATE) \
        ro.revolt.version=revolt_$(TARGET_PRODUCT)-Unofficial-$(DATE)
endif
endif
endif

# ReVolt Statistics
PRODUCT_PROPERTY_OVERRIDES += \
        ro.revolt.branch=$(RV_BRANCH) \
        ro.revolt.device=$(RV_PRODUCT)

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
