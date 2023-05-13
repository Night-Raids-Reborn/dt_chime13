#
# Copyright (C) 2023 The bananaOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common BananaDroid stuff
$(call inherit-product, vendor/banana/config/common.mk)

# Inherit from citrus device
$(call inherit-product, device/xiaomi/citrus/device.mk)

PRODUCT_NAME := banana_citrus
PRODUCT_DEVICE := citrus
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2010J19CG

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="citrus-user 12 SKQ1.211202.001 V13.0.3.0.SJFMIXM release-keys"

BUILD_FINGERPRINT := POCO/citrus_global/citrus:12/SKQ1.211202.001/V13.0.3.0.SJFMIXM:user/release-keys

# SOme Stuff
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_QUICK_TAP := true
WITH_GAPPS:= true
TARGER_SUPPORTS_NEXT_GEN_ASSISTANT := true
BANANA_MAINTAINER := Darknius

# # Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true