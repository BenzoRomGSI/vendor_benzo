# Benzo Rom 
# 
# See config/optimizations/optimizations.mk to set build optimizations
# See config/common_versions.mk to set build numbers and OTA info

# Inherit build optimizations
include vendor/benzo/config/optimizations/optimizations.mk

PRODUCT_PACKAGE_OVERLAYS += vendor/benzo/overlay/common

# Extra packages
PRODUCT_PACKAGES += \
    libbfqio \
    OmniJaws \
    OmniStyle \
    Terminal

# Keyboard libs
PRODUCT_COPY_FILES += \
    vendor/benzo/prebuilt/lib64/libjni_latinimegoogle.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libjni_latinimegoogle.so

# Backup Tool
ifeq ($(AB_OTA_UPDATER),true)
PRODUCT_COPY_FILES += \
    vendor/benzo/prebuilt/bin/backuptool_ab.sh:system/bin/backuptool_ab.sh \
    vendor/benzo/prebuilt/bin/backuptool_ab.functions:system/bin/backuptool_ab.functions \
    vendor/benzo/prebuilt/bin/backuptool_postinstall.sh:system/bin/backuptool_postinstall.sh
else
PRODUCT_COPY_FILES += \
    vendor/benzo/prebuilt/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/benzo/prebuilt/bin/backuptool.functions:install/bin/backuptool.functions
endif

# init.d support
PRODUCT_COPY_FILES += \
    vendor/benzo/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/benzo/prebuilt/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/benzo/prebuilt/etc/init.d/90userinit:system/etc/init.d/90userinit

# Benzo init
PRODUCT_COPY_FILES += \
    vendor/benzo/prebuilt/etc/init.benzo.rc:root/init.benzo.rc

# Props
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Substratum AOPT
PRODUCT_PROPERTY_OVERRIDES += \
    ro.substratum.aopt=true

# SystemUITests
EXCLUDE_SYSTEMUI_TESTS := true

# ART changes
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD = false

# Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/benzo/overlay/common

# Inherit common product build prop overrides
-include vendor/benzo/config/common_versions.mk
