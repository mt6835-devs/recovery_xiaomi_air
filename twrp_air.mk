#
# Copyright (C) 2026 The TWRP Open Source Project
# SPDX-License-Identifier: Apache-2.0
#

# Device path for OEM device tree
DEVICE_PATH := device/xiaomi/air

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit any OrangeFox-specific settings
$(call inherit-product-if-exists, $(DEVICE_PATH)/fox_air.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)


## Device identifier. This must come after all inclusions
PRODUCT_NAME := twrp_air
PRODUCT_DEVICE := air
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23124RN87G
PRODUCT_MANUFACTURER := Xiaomi
