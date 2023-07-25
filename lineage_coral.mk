#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common AlphaDroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_coral.mk)

include device/google/coral/coral/device-lineage.mk

# Face unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# GAPPS
WITH_GMS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true

# Maintainer
ALPHA_BUILD_TYPE := Official
ALPHA_MAINTAINER := REV3NT3CH

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4 XL
PRODUCT_NAME := lineage_coral

# Boot animation
TARGET_SCREEN_HEIGHT := 3040
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=coral \
    PRIVATE_BUILD_DESC="coral-user 13 TP1A.221005.002.B2 9382335 release-keys"

BUILD_FINGERPRINT := google/coral/coral:13/TP1A.221005.002.B2/9382335:user/release-keys

$(call inherit-product, vendor/google/coral/coral-vendor.mk)
