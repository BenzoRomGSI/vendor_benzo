# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=OPM1.171019.011 BUILD_ID=OPM1.171019.011 BUILD_VERSION_TAGS=release-keys BUILD_UTC_DATE=0

ANDROID_NAME := eightone
export ANDROID_NAME

    CUSTOM_BUILD_TYPE := UNOFFICIAL
    PLATFORM_VERSION_CODENAME := UNOFFICIAL
    BENZO_POSTFIX := -$(shell date -u +%Y%m%d)

ROM_DATE := $(shell date -u +%Y%m%d)-$(shell date -u +%H%M)
ROM_VERSION := $(ROM_DATE)-$(TARGET_DEVICE)
BENZO_VERSION := $(ROM_VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.benzo.version=$(ROM_VERSION)

# Get kernel GCC version
-include vendor/benzo/config/optimizations/sm.mk

# Disable cfi sanitizer
ENABLE_CFI := false

# DragonTC info
DRAGONTC_VERSION := 5.0

DTC_PATH := prebuilts/clang/host/linux-x86/$(DRAGONTC_VERSION)
DTC_VER := $(shell cat $(DTC_PATH)/VERSION)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.clang.version=$(DTC_VER)

-include prebuilts/clang/host/linux-x86/$(DRAGONTC_VERSION)/DragonTC.mk