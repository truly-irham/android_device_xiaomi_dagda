#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from zeus device
$(call inherit-product, device/xiaomi/zeus/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Miui Camera for zeus
$(call inherit-product, device/xiaomi/miuicamera-zeus/device.mk)
$(call inherit-product, device/xiaomi/miuicamera-zeus/BoardConfig.mk)

# Inherit from ViPER4AndroidFX
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

# Inherit from Basic Call Recorder (BCR)
$(call inherit-product, vendor/bcr/bcr.mk)

# Matrixx flags
MATRIXX_BUILD_TYPE := Unofficial
MATRIXX_MAINTAINER := "rpi_luver (@truly_irham)"
MATRIXX_CHIPSET := SM8450
MATRIXX_BATTERY := 4600mAh
MATRIXX_DISPLAY := 1440x3200
WITH_GMS := true
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_zeus
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
