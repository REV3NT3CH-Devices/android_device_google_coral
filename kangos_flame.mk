# Inherit some common KangOS stuff.
$(call inherit-product, vendor/kangos/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_flame.mk)

-include device/google/coral/device-lineage.mk

# others
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# KangOS Stuff
USE_GAPPS := true
TARGET_INCLUDE_AOSP_REPLACEMENT := true

# KangOS Props
PRODUCT_PRODUCT_PROPERTIES += \
  ro.kangos.maintainer=BigMarv \

## Device identifier. This must come after all inclusions
PRODUCT_NAME := kangos_flame
PRODUCT_MODEL := Pixel 4
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=flame \
    PRIVATE_BUILD_DESC="flame-user 11 RQ2A.210405.005 7181113 release-keys"

BUILD_FINGERPRINT := google/flame/flame:11/RQ2A.210405.005/7181113:user/release-keys

$(call inherit-product, vendor/google/flame/flame-vendor.mk)
