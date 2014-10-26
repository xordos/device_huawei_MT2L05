#
# Copyright (C) 2014 Modding.MyMind http://forum.xda-developers.com/member.php?u=5537766
# Copyright (C) 2014 ModdingMyMind https://github.com/ModdingMyMind
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

# Platform
#TARGET_BOARD_PLATFORM := hi6620oem
#TARGET_BOARD_PLATFORM_GPU := qcom-adreno305

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MT2L05
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
#TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_VARIANT := generic
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Kernel and dtb
BOARD_KERNEL_CMDLINE := k3v2mem k3v2_ion=1 vmalloc=448M maxcpus=4 initcall_debug=n
BOARD_KERNEL_BASE := 0x07000000
BOARD_KERNEL_PAGESIZE := 2048
#BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x0B000000 --tags_offset 0x07000100
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x04000000
#BOARD_KERNEL_SEPARATED_DT := true
# I have added prebuilt kernel to device.mk
# TARGET_PREBUILT_KERNEL := device/huawei/MT2L05/prebuilt/kernel

#TARGET_RECOVERY_INITRC := device/huawei/MT2L05/recovery/init.rc

# fix this up by examining /proc/partitions on a running device
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12914262016
BOARD_FLASH_BLOCK_SIZE := 512
# Allow Power Button To Be Select In Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
# EXT4 larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
# Vold
#BOARD_VOLD_MAX_PARTITIONS := 25
#BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/hisik3-usb-otg/gadget/lun0/file
BOARD_MTP_DEVICE := /dev/mtp_usb
# For 4.3+
HAVE_SELINUX := true
# TWRP Specific
DEVICE_RESOLUTION := 720x1280
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_8888"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_FLASH_FROM_STORAGE := true
#TW_INTERNAL_STORAGE_PATH := "/HWUserData"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "HWUserData"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"

