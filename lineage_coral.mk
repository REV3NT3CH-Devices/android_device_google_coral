#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common AlphaDroid stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/coral/aosp_coral.mk)

include device/google/coral/coral/device-lineage.mk

# AlphaDroid Xtras
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_PIXEL_FRAMEWORK := true

# GAPPS configs
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_GOOGLE_APP := true
TARGET_INCLUDE_GOOGLE_CAMERA := true
TARGET_INCLUDE_GOOGLE_CALCULATOR := true
TARGET_INCLUDE_GOOGLE_CALENDAR := true
TARGET_INCLUDE_GOOGLE_CHROME := true
TARGET_INCLUDE_GOOGLE_DESKCLOCK := true
TARGET_INCLUDE_GOOGLE_DRIVE := true
TARGET_INCLUDE_GMAIL := true
TARGET_INCLUDE_GOOGLE_MAPS := true
TARGET_INCLUDE_GOOGLE_MARKUP := true
TARGET_INCLUDE_GOOGLE_PHOTOS := true
TARGET_INCLUDE_GOOGLE_SETUP := true

# Use Google Telephony pack (Dialer, Contacts, Messaging) on GAPPS builds
# Default = true
TARGET_USE_GOOGLE_TELEPHONY := true

# Debugging
# Default = false
TARGET_INCLUDE_MATLOG := false
TARGET_DEFAULT_ADB_ENABLED := true

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
