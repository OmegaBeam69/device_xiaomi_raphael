# Copyright (C) 2022 VoltageOS
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

# Inherit from those products. Most specific first.
$(call inherit-product, device/xiaomi/raphael/device.mk)

# Inherit some common SparkOS stuff.
$(call inherit-product, vendor/spark/config/common_full_phone.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Charging Animation
TARGET_INCLUDE_PIXEL_CHARGER := true

# Disable/Enable Blur Support, default is false
TARGET_ENABLE_BLUR := true

#Udfps Stuff
EXTRA_UDFPS_ANIMATIONS := true

# Quick Tap Feature
TARGET_SUPPORTS_QUICK_TAP := true

# With Gapps
WITH_GAPPS := false

# Officially 
SPARK_BUILD_TYPE := UNOFFICIAL

# Maintainer
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.spark.maintainer= Wasik | Fahim

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := spark_raphael
PRODUCT_DEVICE := raphael
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 9T Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="raphael"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
