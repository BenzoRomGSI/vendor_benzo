# Benzo Rom 
#
PRODUCT_PACKAGE_OVERLAYS += vendor/benzo/overlay/common

# Keyboard libs
PRODUCT_COPY_FILES += \
    vendor/benzo/prebuilt/lib64/libjni_latinimegoogle.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libjni_latinimegoogle.so

# Inherit common product build prop overrides
-include vendor/benzo/config/versions.mk
