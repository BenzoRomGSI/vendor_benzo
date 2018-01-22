# Inherit common stuff
$(call inherit-product, vendor/benzo/config/common.mk)

$(call inherit-product, vendor/benzo/config/telephony.mk)

# ART NoDebug
export ART_BUILD_TARGET_NDEBUG := true
export ART_BUILD_TARGET_DEBUG := false
export ART_BUILD_HOST_NDEBUG := true
export ART_BUILD_HOST_DEBUG := false
