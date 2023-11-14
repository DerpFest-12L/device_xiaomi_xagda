#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from xaga device
$(call inherit-product, device/xiaomi/xaga/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2460
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# ROM Flags
TARGET_SCREEN_DENSITY := 440
WITH_GMS := true
RISING_CHIPSET := Dimensity 8100
RISING_MAINTAINER := Priyanshu & Chris
TARGET_PREBUILT_GCAM := false
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_DISABLE_EPPE := true
TARGET_PREBUILT_PIXEL_LAUNCHER := false
# Ship pixel features (adaptivecharging, dreamliner etc)
TARGET_ENABLE_PIXEL_FEATURES := false
# Use google telephony framework
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_PREBUILT_SOUND_MODEL := true

# Inherit risingOS vendor stuffs
$(call inherit-product, vendor/rising/config/rising.mk)

# Device identifier
PRODUCT_NAME := rising_xaga
PRODUCT_DEVICE := xaga
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note11T Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="xaga-user 12 SP1A.210812.016 V14.0.6.0.TLOMIXM release-keys"

BUILD_FINGERPRINT := Redmi/xaga/xaga:12/SP1A.210812.016/V14.0.6.0.TLOMIXM:user/release-keys