#
# Copyright (C) 2022 The KaleidoscopeOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from thyme device
$(call inherit-product, device/xiaomi/thyme/device.mk)

# Inherit common CherishOS configurations
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cherish_thyme
PRODUCT_DEVICE := thyme
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2102J2SC
PRODUCT_MANUFACTURER := Xiaomi
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Xiaomi/thyme/thyme:12/SKQ1.211006.001/V13.0.8.0.SGACNXM:user/release-keys
