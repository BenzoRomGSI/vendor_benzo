# Benzo Rom 
#
PRODUCT_PACKAGE_OVERLAYS += vendor/benzo/overlay/common
# Inherit art options
include vendor/benzo/config/art.mk

# Extra packages
PRODUCT_PACKAGES += \
    Browser

# Copy hiddenapi whitelist
PRODUCT_COPY_FILES += \
    vendor/benzo/prebuilt/etc/sysconfig/benzo-hiddenapi-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/benzo-hiddenapi-whitelist.xml

# Keyboard libs
PRODUCT_COPY_FILES += \
    vendor/benzo/prebuilt/lib64/libjni_latinimegoogle.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libjni_latinimegoogle.so

# Inherit common product build prop overrides
-include vendor/benzo/config/versions.mk
