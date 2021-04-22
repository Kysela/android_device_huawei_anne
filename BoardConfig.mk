#
# Copyright (C) 2021 ATGDroid <bythedroid@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_TREE_PATH := device/huawei/anne

# Assert
TARGET_OTA_ASSERT_DEVICE := anne,hi6250

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := KIRIN
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := generic
TARGET_BOARD_PLATFORM_GPU := kirin

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_CUSTOM_BOOTIMG_MK := device/huawei/anne/custombootimg.mk
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x8000 --ramdisk_offset 0x01000000 --tags_offset 0x0100

# phony empty kernel to satisfy build system, but this device does not
# include a kernel in the recovery image -- flash to recovery_ramdisk
#TARGET_PREBUILT_KERNEL := device/huawei/anne/dummykernel

# File System
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432

# NOTE I only bother properly setting recovery image size
BOARD_BOOTIMAGE_PARTITION_SIZE := 41943040
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3909091328
BOARD_USERDATAIMAGE_PARTITION_SIZE := 54316236800
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Fstab and init.rc files
TARGET_RECOVERY_FSTAB := $(DEVICE_TREE_PATH)/recovery.fstab
TARGET_RECOVERY_DEVICE_DIRS += $(DEVICE_TREE_PATH)

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_VFAT := true
TARGET_USERIMAGES_USE_EXFAT := true
TARGET_USERIMAGES_USE_SQUASHFS := true

# Recovery
TW_THEME := portrait_hdpi
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd_backlight0/brightness
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_NO_HAPTICS := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_NO_SCREEN_BLANK := true
TW_USE_TOOLBOX := true
TW_DEFAULT_BRIGHTNESS := "2048"
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/Battery
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true
TW_USE_NEW_MINADBD := true



# Selinux
#SELINUX_IGNORE_NEVERALLOWS := true
#BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private
#include vendor/omni/sepolicy/sepolicy.mk
