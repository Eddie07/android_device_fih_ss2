#
# Copyright (C) 2018 The LineageOS Project
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

# Vendor blobs
$(call inherit-product-if-exists, vendor/sharp/ss2/ss2-vendor.mk)

# Properties
-include $(LOCAL_PATH)/vendor_prop.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/soundfx/lib/libasphere.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libasphere.so \
    $(LOCAL_PATH)/audio/soundfx/lib/libqcbassboost.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libqcbassboost.so \
    $(LOCAL_PATH)/audio/soundfx/lib/libqcreverb.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libqcreverb.so\
    $(LOCAL_PATH)/audio/soundfx/lib/libqcvirt.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libqcvirt.so \
    $(LOCAL_PATH)/audio/soundfx/lib/libshoebox.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libshoebox.so \
    $(LOCAL_PATH)/audio/soundfx/lib64/libasphere.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libasphere.so \
    $(LOCAL_PATH)/audio/soundfx/lib64/libqcbassboost.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libqcbassboost.so \
    $(LOCAL_PATH)/audio/soundfx/lib64/libqcreverb.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libqcreverb.so\
    $(LOCAL_PATH)/audio/soundfx/lib64/libqcvirt.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libqcvirt.so \
    $(LOCAL_PATH)/audio/soundfx/lib64/libshoebox.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libshoebox.so \
    $(LOCAL_PATH)/audio/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/audio_tuning_mixer_tasha.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer_tasha.txt \
    $(LOCAL_PATH)/audio/graphite_ipc_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/graphite_ipc_platform_info.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths_wcd9335.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths_wcd9335.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml \
    $(LOCAL_PATH)/audio/drc_cfg_5.1.txt:$(TARGET_COPY_OUT_VENDOR)/etc/drc/drc_cfg_5.1.txt \
    $(LOCAL_PATH)/audio/drc_cfg_AZ.txt:$(TARGET_COPY_OUT_VENDOR)/etc/drc/drc_cfg_AZ.txt \
    $(LOCAL_PATH)/audio/listen_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/listen_platform_info.xml \
    $(LOCAL_PATH)/audio/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/surround_sound_rec_5.1.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/surround_sound_3mic/surround_sound_rec_5.1.cfg \
    $(LOCAL_PATH)/audio/surround_sound_rec_AZ.cfg:$(TARGET_COPY_OUT_VENDOR)/etc/surround_sound_3mic/surround_sound_rec_AZ.cfg \
    $(LOCAL_PATH)/audio/TFA9891.cnt:$(TARGET_COPY_OUT_VENDOR)/firmware/TFA9891.cnt \
   $(LOCAL_PATH)/audio/TFA9891_N1A_11_1_31_NL3_HQ.patch:$(TARGET_COPY_OUT_VENDOR)/firmware/TFA9891_N1A_11_1_31_NL3_HQ.patch \
  $(LOCAL_PATH)/audio/TFA9891N1A_Dec2015.config:$(TARGET_COPY_OUT_VENDOR)/firmware/TFA9891N1A_Dec2015.config \
  $(LOCAL_PATH)/audio/TFA9891.speaker:$(TARGET_COPY_OUT_VENDOR)/firmware/TFA9891.speaker \
  $(LOCAL_PATH)/audio/TFA9891.ini:$(TARGET_COPY_OUT_VENDOR)/firmware/TFA9891.ini \
  $(LOCAL_PATH)/audio/TFA9891.cnt_preformat.ini:$(TARGET_COPY_OUT_VENDOR)/firmware/TFA9891.cnt_preformat.ini \
  $(LOCAL_PATH)/audio/T9891V04.vstep:$(TARGET_COPY_OUT_VENDOR)/firmware/T9891V04.vstep \
  $(LOCAL_PATH)/audio/TAS2557MSSMono.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/TAS2557MSSMono.bin \
  $(LOCAL_PATH)/audio/T9891V04.drc:$(TARGET_COPY_OUT_VENDOR)/firmware/T9891V04.drc \
  $(LOCAL_PATH)/audio/T9891V04.vstep:$(TARGET_COPY_OUT_VENDOR)/firmware/T9891V04.vstep \
  $(LOCAL_PATH)/audio/T9891S04.drc:$(TARGET_COPY_OUT_VENDOR)/firmware/T9891S04.drc \
  $(LOCAL_PATH)/audio/T9891S04.vstep:$(TARGET_COPY_OUT_VENDOR)/firmware/T9891S04.vstep\
  $(LOCAL_PATH)/audio/T9891R04.drc:$(TARGET_COPY_OUT_VENDOR)/firmware/T9891R04.drc \
  $(LOCAL_PATH)/audio/T9891R04.vstep:$(TARGET_COPY_OUT_VENDOR)/firmware/T9891R04.vstep \
  $(LOCAL_PATH)/audio/T9891M04.drc:$(TARGET_COPY_OUT_VENDOR)/firmware/T9891M04.drc \
  $(LOCAL_PATH)/audio/T9891M04.vstep:$(TARGET_COPY_OUT_VENDOR)/firmware/T9891M04.vstep \
  $(LOCAL_PATH)/audio/TAS2557MSSMono.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/TAS2557MSSMono.bin \
  $(LOCAL_PATH)/audio/CommonVendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/CommonVendor.xml


# Boot animation
TARGET_SCREEN_HEIGHT := 2040
TARGET_SCREEN_WIDTH := 1080

# Fingerprint Gestures
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-fpc.kl \
    $(LOCAL_PATH)/idc/uinput-fpc.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/uinput-fpc.idc

#HIDL
PRODUCT_PACKAGES += \
  android.hidl.manager@1.0-java


# Init
PRODUCT_PACKAGES += \
    init.fingerprint.SAT.rc \
    init.fingerprint.SS2.rc \
    init.SATSS2.rc \
    init.nfc.nxp.rc


# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.1-service \
    vendor.nxp.hardware.nfc@1.1-service \
    com.android.nfc_extras \
    NfcNci \
    SecureElement \
     Tag \
    nfcee_access.xml \


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libese-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libese-nxp.conf \
    $(LOCAL_PATH)/nfc/libnfc-brcm.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

# Recovery
PRODUCT_PACKAGES += \
    librecovery_updater_fih

# Shims
PRODUCT_PACKAGES += \
    camera.sdm660.shim


# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf \
    $(LOCAL_PATH)/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev_s2.conf \
    $(LOCAL_PATH)/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Verity
PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/platform/soc/c0c4000.sdhci/by-name/system
PRODUCT_VENDOR_VERITY_PARTITION := /dev/block/platform/soc/c0c4000.sdhci/by-name/vendor
#remove in userbuilds $(call inherit-product, build/target/product/verity.mk)


$(call inherit-product, device/sharp/sdm660-common/common.mk)

#wlan
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/wlan/bdwlan_SS2_cal.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/bdf/bdwlan_SS2_cal.bin \
     $(LOCAL_PATH)/wlan/bdwlan_SAT_cal.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/bdf/bdwlan_SAT_cal.bin


