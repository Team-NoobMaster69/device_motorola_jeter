#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/motorola/jeter/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Target
TARGET_BOOT_ANIMATION_RES := 720

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := arrow_jeter
PRODUCT_DEVICE := jeter
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto G6 Play
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="jeter-user 9 PPPS29.118-57-5 d3be1 release-keys" \
    PRODUCT_NAME="jeter"

BUILD_FINGERPRINT := motorola/jeter/jeter:9/PPPS29.118-57-5/d3be1:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-motorola
