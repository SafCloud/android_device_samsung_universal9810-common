LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE            := fstab.samsungexynos9810
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := vendor/etc/fstab.samsungexynos9810
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.baseband.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := vendor/etc/init/init.baseband.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.gps.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := vendor/etc/init/init.gps.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.samsung.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := vendor/etc/init/init.samsung.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.samsungexynos9810.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := vendor/etc/init/init.samsungexynos9810.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.samsungexynos9810.usb.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := vendor/etc/init/init.samsungexynos9810.usb.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.vendor.onebinary.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := vendor/etc/init/init.vendor.onebinary.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.vendor.rilchip.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := vendor/etc/init/init.vendor.rilchip.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.vendor.rilcommon.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := vendor/etc/init/init.vendor.rilcommon.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := ueventd.samsungexynos9810.rc
LOCAL_MODULE_STEM       := ueventd.rc
LOCAL_MODULE_CLASS      := BOOT
LOCAL_SRC_FILES         := vendor/ueventd.samsungexynos9810.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE          := sswap
LOCAL_MODULE_OWNER    := samsung
LOCAL_MODULE_PATH     := $(TARGET_ROOT_OUT_SBIN)
LOCAL_UNSTRIPPED_PATH := $(TARGET_ROOT_OUT_SBIN_UNSTRIPPED)
LOCAL_SRC_FILES       := sbin/sswap
LOCAL_MODULE_TAGS     := optional
LOCAL_MODULE_CLASS    := EXECUTABLES
include $(BUILD_PREBUILT)
