#
# Copyright 2012 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

$(call inherit-product, vendor/nitrogen/products/common.mk)

# Inherit from the common Open Source product configuration
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
PRODUCT_NAME := nitrogen_deb
PRODUCT_DEVICE := deb
PRODUCT_BRAND := Android
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := ASUS
PRODUCT_RESTRICT_VENDOR_FILES := false

TARGET_BOOT_ANIMATION_RES := 1080
-include vendor/aosp/configs/bootanimation.mk
# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/asus/deb/device.mk)
$(call inherit-product-if-exists, vendor/asus/deb/device-vendor.mk)
#$(call inherit-product-if-exists, vendor/qcom/proprietary/common/config/device-vendor.mk)
