# Inherit art options
include vendor/benzo/config/art.mk

PRODUCT_PACKAGE_OVERLAYS += vendor/benzo/overlay/common

# Extra packages
PRODUCT_PACKAGES += \
    Browser \
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

# Copy all benzo init rc files
$(foreach f,$(wildcard vendor/benzo/prebuilt/etc/init/*.rc),\
	$(eval PRODUCT_COPY_FILES += $(f):system/etc/init/$(notdir $f)))

# Props
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1 \
    debug.performance.tuning=1 \
    keyguard.no_require_sim=true

# Substratum AOPT
PRODUCT_PROPERTY_OVERRIDES += \
    ro.substratum.aopt=true

# SystemUITests
EXCLUDE_SYSTEMUI_TESTS := true

# Use ccache
USE_CCACHE := true

# Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/benzo/overlay/common

# Inherit common product build prop overrides
-include vendor/benzo/config/common_versions.mk
