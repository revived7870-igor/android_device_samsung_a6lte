#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Device Path
DEVICE_PATH := device/samsung/a6lte

## Inherit common device
$(call inherit-product, device/samsung/exynos7870-common/exynos7870.mk)

## Inherit device vendor blobs
$(call inherit-product, vendor/samsung/a6lte/a6lte-vendor.mk)

# Init
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/init/fstab.samsungexynos7870:$(TARGET_COPY_OUT_RAMDISK)/fstab.samsungexynos7870 \
    $(DEVICE_PATH)/configs/init/fstab.samsungexynos7870:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.samsungexynos7870 \
    $(DEVICE_PATH)/configs/init/init.a6lte.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.a6lte.rc \
    $(DEVICE_PATH)/configs/init/wifi.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/wifi.rc

# Display
TARGET_SCREEN_DENSITY := 320
TARGET_SCREEN_HEIGHT := 1480
TARGET_SCREEN_WIDTH := 720

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_0.xml

# Media
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)
