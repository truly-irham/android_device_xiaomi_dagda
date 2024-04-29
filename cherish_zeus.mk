#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from zeus device
$(call inherit-product, device/xiaomi/zeus/device.mk)

# Inherit from common CherishOS stuff
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Miui Camera for zeus
$(call inherit-product, device/xiaomi/miuicamera-zeus/device.mk)
$(call inherit-product, device/xiaomi/miuicamera-zeus/BoardConfig.mk)

# Inherit from ViPER4AndroidFX
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

# Inherit from Basic Call Recorder (BCR)
$(call inherit-product, vendor/bcr/bcr.mk)

# CherishOS build flags
CHERISH_BUILD_TYPE=UNOFFICIAL
WITH_GMS := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080
EXTRA_UDFPS_ANIMATIONS := true

# CherishOS props 
CHERISH_CHIPSET := SM8450
CHERISH_BATTERY := 4600mAh
CHERISH_DISPLAY := 1440x3200

# Device identifier
PRODUCT_NAME := cherish_zeus 
PRODUCT_DEVICE := zeus
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2201122G

PRODUCT_SYSTEM_NAME := zeus_global
PRODUCT_SYSTEM_DEVICE := zeus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="zeus_global-user 13 TKQ1.220807.001 V14.0.7.0.TLBMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/zeus_global/zeus:13/TKQ1.220807.001/V14.0.7.0.TLBMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
