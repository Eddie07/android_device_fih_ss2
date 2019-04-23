#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit  sdm660-common
-include device/sharp/sdm660-common/BoardConfigCommon.mk

DEVICE_PATH := device/sharp/ss2



# Assertions
TARGET_OTA_ASSERT_DEVICE := ss2

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Kernel
TARGET_KERNEL_CONFIG := SAT-perf_defconfig
TARGET_KERNEL_SOURCE := kernel/sharp/
# TARGET_KERNEL_CLANG_COMPILE := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2406477107
BOARD_VENDORIMAGE_PARTITION_SIZE := 603979776
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Power
TARGET_POWERHAL_VARIANT := qcom
TARGET_TAP_TO_WAKE_NODE := "/proc/touchpanel/gdouble_tap_enable"

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Treble
PRODUCT_SHIPPING_API_LEVEL := 26

TARGET_PROVIDES_KEYMASTER := true

# Legacy BLOB Support
#TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
#TARGET_LD_SHIM_LIBS += \
#    /vendor/lib/hw/camera.sdm660.so|libshim_camera.so


# Wifi
WIFI_DRIVER_OPERSTATE_PATH := "/sys/class/net/wlan0/operstate"

# NFC
TARGET_USES_NQ_NFC := true
BOARD_NFC_CHIPSET := pn548



# inherit from the proprietary version
-include vendor/sharp/ss2/BoardConfigVendor.mk

