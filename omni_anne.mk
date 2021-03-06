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


# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from anne device
$(call inherit-product, device/huawei/anne/device.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)


## Device identifier. This must come after all inclusions
BOARD_VENDOR := Huawei
PRODUCT_DEVICE := anne
PRODUCT_NAME := omni_anne
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := P20 Lite
PRODUCT_MANUFACTURER := Huawei
TARGET_VENDOR := Huawei
PRODUCT_RELEASE_NAME := anne
PRODUCT_GMS_CLIENTID_BASE := android-google
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.hardware.keystore=hi6250 ro.hardware.gatekeeper=hi6250
