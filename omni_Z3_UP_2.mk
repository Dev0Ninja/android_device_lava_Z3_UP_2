#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Z3_UP_2 device
$(call inherit-product, device/lava/Z3_UP_2/device.mk)

PRODUCT_DEVICE := Z3_UP_2
PRODUCT_NAME := omni_Z3_UP_2
PRODUCT_BRAND := LAVA
PRODUCT_MODEL := LAVA Z3 UP 2
PRODUCT_MANUFACTURER := lava

PRODUCT_GMS_CLIENTID_BASE := android-lava

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Z3_UP_2b-user 11 RP1A.200720.011 70 release-keys"

BUILD_FINGERPRINT := LAVA/Z3_UP_2b/Z3_UP_2:11/RP1A.200720.011/70:user/release-keys
