# Copyright (C) 2014 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

TARGET_OTA_ASSERT_DEVICE := a11chl,a11ul

BOARD_VENDOR := htc

# inherit from the proprietary version
-include vendor/htc/a11chlspr/BoardConfigVendor.mk


#Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8226
TARGET_NO_BOOTLOADER := true

#Platform
TARGET_BOARD_PLATFORM := msm8226
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305

#Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

#Flags
COMMON_GLOBAL_CFLAGS += -DHTCLOG

#Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 echi-hcd.park=3
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_CONFIG := a11chl_defconfig
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02008000 --tags_offset 0x01e00000

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Audio
AUDIO_FEATURE_DISABLED_MULTI_VOICE_SESSIONS := true
BOARD_USES_ALSA_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/a11chlspr/bluetooth

# fix this up by examining /proc/emmc on a running device
# if I totally borked this, refer to other devices
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216 #0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216 #0x01000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648 #0x80000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1207959552 #0x48000000
BOARD_FLASH_BLOCK_SIZE := 512 #Was #131072

TARGET_PREBUILT_KERNEL := device/htc/a11chlspr/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

USE_CAMERA_STUB := true
