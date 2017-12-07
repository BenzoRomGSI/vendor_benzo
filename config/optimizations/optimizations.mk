# System
USE_CCACHE := true

export TARGET_DEVICE := marlin

# Toolchain and other
TARGET_GCC_VERSION_KERNEL := 8.0

# benzoCore
KBUILD_BUILD_USER := xanaxdroid
KBUILD_BUILD_HOST := benzo

# Prop Optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    debug.performance.tuning=1 \
    keyguard.no_require_sim=true
