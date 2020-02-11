# Copyright (C) 2018 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

ifneq ($(findstring lineage, $(TARGET_PRODUCT)),)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage
endif

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.sensor.heartrate.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.sensor.heartrate.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.vr.high_performance.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.vr.high_performance.xml \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.freeform_window_management.xml

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 560dpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440

# Init
PRODUCT_PACKAGES += \
    fstab.samsungexynos9810 \
    init.baseband.rc \
    init.gps.rc \
    init.samsung.rc \
    init.samsungexynos9810.rc \
    init.samsungexynos9810.usb.rc \
    init.vendor.onebinary.rc \
    init.vendor.rilchip.rc \
    init.vendor.rilcommon.rc \
    ueventd.samsungexynos9810.rc

# Zswap
PRODUCT_PACKAGES += \
    sswap

# Treble
PRODUCT_FULL_TREBLE_OVERRIDE := true

# Graphics
PRODUCT_PACKAGES += \
    libhwc2on1adapter \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.2-impl \
    android.hardware.graphics.composer@2.2-service \
    android.hardware.graphics.common@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-service \
    android.hardware.memtrack@1.0-impl \
    android.hardware.renderscript@1.0-impl \
    libhwc2on1fbadapter \
    libvulkan \
    libtinyxml \
    libion \
    libfimg \
    libc++

# HIDL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/compatibility_matrix.xml:system/compatibility_matrix.xml

# Audio
USE_XML_AUDIO_POLICY_CONF := 1
TARGET_EXCLUDES_AUDIOFX := true
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-service \
    android.hardware.audio@5.0-impl \
    android.hardware.audio.effect@5.0-impl \
    android.hardware.audio.common@5.0-util \
    android.hardware.soundtrigger@2.0-impl \
    audio.primary.default \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libtinycompress

# Camera
PRODUCT_PACKAGES += \
    Snap

PRODUCT_PACKAGES += \
    android.hardware.camera.common@1.0 \
    android.hardware.camera.provider@2.4 \
    android.hardware.camera.provider@2.4-legacy \
    android.hardware.camera.provider@2.5 \
    android.hardware.camera.provider@2.5-legacy \
    android.hardware.camera.provider@2.5-impl \
    camera.device@1.0 \
    camera.device@3.2 \
    camera.device@3.3 \
    camera.device@3.4 \
    camera.device@3.5 \
    libhwjpeg \
    libexif

# Radio
PRODUCT_PACKAGES += \
    android.hardware.radio@1.4 \
    libxml2

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    android.hardware.wifi@1.0 \
    android.hardware.wifi@1.3 \
    android.hardware.wifi.supplicant@1.0 \
    android.hardware.wifi.supplicant@1.2 \
    android.hardware.wifi.hostapd@1.0

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@2.0 \
    android.hardware.gnss@2.0-impl \
    android.hardware.gnss@1.1-impl

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-service \
    android.hardware.bluetooth@1.0-impl

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-impl \
    com.android.nfc_extras \
    libnfc-nci \
    libnfc_nci_jni \
    NfcNci \
    Tag

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.samsung

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.samsung

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-service.9810

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service

# Configstore
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.1-service

# Cas
PRODUCT_PACKAGES += \
    android.hardware.cas@1.1-service

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# Preopt SystemUI
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio_keys.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/gpio_keys.kl

# Remove unwanted packages
PRODUCT_PACKAGES += \
    RemovePackages

# Vendor/default.prop
-include $(LOCAL_PATH)/default_prop.mk

# Property overrides
-include $(LOCAL_PATH)/system_prop.mk
