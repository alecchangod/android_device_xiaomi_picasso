#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm7250-common
$(call inherit-product, device/xiaomi/sm7250-common/lito.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Camera
PRODUCT_PACKAGES += \
    libMegviiFacepp-0.5.2 \
    libmegface

# Fingerprint
TARGET_HAS_UDFPS=false

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/picasso/picasso-vendor.mk)
