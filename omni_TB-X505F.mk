#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TB-X505F device
$(call inherit-product, device/lenovo/TB-X505F/device.mk)

PRODUCT_DEVICE := TB-X505F
PRODUCT_NAME := omni_TB-X505F
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-X505F
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo-rev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="TB-X505F-user 10 QKQ1.191224.003 X505F_S001149_221115_ROW release-keys"

BUILD_FINGERPRINT := Lenovo/TB-X505F/TB-X505F:10/QKQ1.191224.003/X505F_S001149_221115_ROW:user/release-keys
