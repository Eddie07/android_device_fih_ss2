RECOVERY_VARIANT := twrp
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_FUSE_NTFS := true
AB_OTA_UPDATER := true
# PLATFORM_SDK_VERSION := 27
# RECOVERY_NEED_SELINUX_FIX := true
# TARGET_RECOVERY_FSTAB := device/sharp/ss2/twrp/twrp.fstab

#TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TARGET_RECOVERY_DEVICE_MODULES += android.hardware.boot@1.0
TW_RECOVERY_ADDITIONAL_RELINK_FILES := ${OUT_DIR}/system/lib64/android.hardware.boot@1.0.so

TARGET_RECOVERY_DEVICE_DIRS += device/sharp/ss2/twrp
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_THEME := portrait_hdpi
BOARD_KERNEL_CMDLINE += selinux=0
BOARD_KERNEL_CMDLINE += enforcing=0
#TW_INTERNAL_STORAGE_PATH := "/data/media/0"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
#TW_EXTERNAL_STORAGE_PATH := "/external_sd"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TARGET_HW_DISK_ENCRYPTION := true
# TARGET_USE_UFS_ICE := true
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/cryptfs_hw
TW_INCLUDE_CRYPTO := true
# TW_INCLUDE_CRYPTO_FBE := true
# TW_CRYPTO_USE_SYSTEM_VOLD := qseecomd
# TW_USE_TOOLBOX := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
PLATFORM_SECURITY_PATCH := 2025-12-31

# Recovery
# Encryption
TARGET_HW_DISK_ENCRYPTION := true
TW_INCLUDE_CRYPTO := true
#TW_CRYPTO_USE_SYSTEM_VOLD := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TWRP_ENABLE_LOGCAT := true

#BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TWRP_NEW_THEME := true
TW_THEME := portrait_hdpi
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MAX_BRIGHTNESS := 150
TW_DEFAULT_BRIGHTNESS := "30"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_DEFAULT_LANGUAGE := en
TW_EXTRA_LANGUAGES := true
AB_OTA_UPDATER := true
# TW_NEVER_UNMOUNT_SYSTEM := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INCLUDE_NTFS_3G := true
BOARD_HAS_REMOVABLE_STORAGE := true
TW_NO_SCREEN_BLANK := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INCLUDE_FB2PNG := true


# Encryption support
TW_INCLUDE_CRYPTO := true
TARGET_HW_DISK_ENCRYPTION := true
TW_INCLUDE_FBE := true

TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
RECOVERY_VARIANT := twrp

#File System
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_ROOT_EXTRA_FOLDERS := bt_firmware dsp firmware persist BBSYS hidden elabel securefs
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/recovery.fstab
# GPT Utils
BOARD_PROVIDES_GPTUTILS := true
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    system \
    vendor

# A/B OTA dexopt package
PRODUCT_PACKAGES += otapreopt_script

# Crypto
#PRODUCT_PACKAGES += \
#   libcryptfs_hw

PRODUCT_PACKAGES += \
    charger_res_images \
    charger \
    libminui


# Setup dm-verity configs
#PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/platform/soc/c0c4000.sdhci/by-name/system
#PRODUCT_VENDOR_VERITY_PARTITION := /dev/block/platform/soc/c0c4000.sdhci/by-name/vendor
#$(call inherit-product, build/target/product/verity.mk)

# Treble Enabled
PRODUCT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true

	# Partitions (listed in the file) to be wiped under recovery.
TARGET_RECOVERY_WIPE := \
    $(LOCAL_PATH)/recovery/root/etc/recovery.wipe
TW_EXTRA_LANGUAGES := true


# Debug flags
TWRP_INCLUDE_LOGCAT := true

 


