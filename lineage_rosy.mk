#
# Copyright (C) The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Indicate the first api level the device has been commercially launched on
PRODUCT_SHIPPING_API_LEVEL := 26

# Inherit some common Spark-OS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Pixel customization
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false

# Inherit from rosy device
$(call inherit-product, device/xiaomi/rosy/device.mk)

PRODUCT_SYSTEM_PROPERTIES += \
ro.aosp.device.name=Redmi 5 \

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_rosy
PRODUCT_DEVICE := rosy
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 5
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BOOTANIMATION_HALF_RES := true

# GApps
TARGET_GAPPS_ARCH := arm64
ARROW_GAPPS := true

# Inherit vendor gapps.
#$(call inherit-product, vendor/gapps/common/common-vendor.mk)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
