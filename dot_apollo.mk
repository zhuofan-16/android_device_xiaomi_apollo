#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Apollo device
$(call inherit-product, device/xiaomi/apollo/device.mk)

# Inherit some common Fluid stuff.
$(call inherit-product, vendor/dot/config/common.mk)

PRODUCT_NAME := dot_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Mi 10T Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="apollo-user 11 RKQ1.200826.002 20.12.25 release-keys"

BUILD_FINGERPRINT := Redmi/apollo/apollo:11/RKQ1.200826.002/20.12.25:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
IS_PHONE := true
TARGET_INCLUDE_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := true

TARGET_FACE_UNLOCK_SUPPORTED := true
