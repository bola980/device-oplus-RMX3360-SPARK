#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oplus/RMX3360

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Boot/DTBO
DEVICE_USES_PREBUILT_DTB := true
PREBUILT_PATH := $(DEVICE_PATH)/prebuilt

ifeq ($(DEVICE_USES_PREBUILT_DTB),true)
BOARD_PREBUILT_DTBOIMAGE := $(PREBUILT_PATH)/dtbo.img
TARGET_PREBUILT_DTB := $(PREBUILT_PATH)/dtb.img
endif

ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
DEVICE_USES_PREBUILT_DTB := true
TARGET_PREBUILT_KERNEL := $(PREBUILT_PATH)/Image.gz
endif

# Common
include device/oplus/sm8350-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 450

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 100

#STUFF
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
