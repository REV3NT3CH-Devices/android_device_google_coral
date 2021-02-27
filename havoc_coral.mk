# Boot animation
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440

# Inherit some common Havoc stuff.
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_coral.mk)

-include device/google/coral/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := havoc_coral
PRODUCT_MODEL := Pixel 4 XL
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=coral \
    PRIVATE_BUILD_DESC="coral-user 11 RQ1A.210205.004 7038034 release-keys"

BUILD_FINGERPRINT := google/coral/coral:11/RQ1A.210205.004/7038034:user/release-keys

$(call inherit-product-if-exists, vendor/google/coral/coral-vendor.mk)
