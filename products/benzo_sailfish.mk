# Release name
PRODUCT_RELEASE_NAME := Pixel
export TARGET_DEVICE := sailfish

# Inherit some common stuff.
$(call inherit-product, vendor/benzo/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

# Google Apps
$(call inherit-product, vendor/googleapps/googleapps.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sailfish
PRODUCT_NAME := benzo_sailfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sailfish \
    PRIVATE_BUILD_DESC="sailfish-user 8.1.0 OPM1.171019.012 4470837 release-keys" \
    BUILD_FINGERPRINT="google/sailfish/sailfish:8.1.0/OPM1.171019.012/4470837:user/release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/benzo/prebuilt/bootanimation.zip:system/media/bootanimation.zip
