#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common Omni stuff.
#$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from TB371FC device
$(call inherit-product, device/lenovo/TB371FC/device.mk)

PRODUCT_DEVICE := TB371FC
PRODUCT_NAME := twrp_TB371FC
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := TB371FC
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="TB371FC_PRC-user 13 TKQ1.221013.002 ZUI_15.0.154_230507_PRC release-keys"

BUILD_FINGERPRINT := Lenovo/TB371FC_PRC/TB371FC:13/TKQ1.221013.002/ZUI_15.0.154_230507_PRC:user/release-keys
