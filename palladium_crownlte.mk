#
# Copyright (C) 2021 The LineageOS Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from crownlte device
$(call inherit-product, device/samsung/crownlte/device.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440

# Inherit some common Palladium stuff
$(call inherit-product, vendor/palladium/config/common_full_phone.mk)

# Official
PALLADIUM_BUILD_TYPE := 
PRODUCT_PRODUCT_PROPERTIES += Community
    ro.palladium.maintainer=Cyder

## Device identifier, this must come after all inclusions
PRODUCT_NAME := palladium_crownlte
PRODUCT_DEVICE := crownlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N960F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

BUILD_FINGERPRINT := "google/raven/raven:12/S3B1.220218.004/8242181:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=crownltexx \
    PRIVATE_BUILD_DESC="google/redfin/redfin:12/SP2A.220305.012/8177914:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.PDA=N960FXXU9FUK1 \
    ro.build.fingerprint=google/redfin/redfin:12/SP2A.220305.012/8177914:user/release-keys
