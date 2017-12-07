# Benzo Rom 
# 
# See config/optimizations/optimizations.mk to set build optimizations
# See config/common_versions.mk to set build numbers and OTA info

# Inherit build optimizations
include vendor/benzo/config/optimizations/optimizations.mk


PRODUCT_PACKAGE_OVERLAYS += vendor/benzo/overlay/common


# Inherit common product build prop overrides
-include vendor/benzo/config/common_versions.mk
