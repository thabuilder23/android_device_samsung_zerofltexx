# Copyright (C) 2020 The LineageOS Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from universal7420-common
include device/samsung/universal7420-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/zerofltexx

# Assert
TARGET_OTA_ASSERT_DEVICE := zeroflte,zerofltexx,zeroflteskt

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Camera-shims
TARGET_LD_SHIM_LIBS += \
	/vendor/lib/libexynoscamera.so|/vendor/lib/libexynoscamera_shim.so \
	/vendor/lib64/libexynoscamera.so|/vendor/lib64/libexynoscamera_shim.so

# Fingerprint-shims
TARGET_LD_SHIM_LIBS += \
	/vendor/lib/libbauthserver.so|/vendor/lib/libbauthtzcommon_shim.so \
	/vendor/lib64/libbauthserver.so|/vendor/lib64/libbauthtzcommon_shim.so

# Include path
TARGET_SPECIFIC_HEADER_PATH += device/samsung/zerofltexx/include

# Kernel
TARGET_KERNEL_CONFIG := lineageos_zerofltexx_defconfig

# Manifest
DEVICE_MANIFEST_FILE := $(LOCAL_PATH)/manifest.xml

# Compatibility Matrix
DEVICE_MATRIX_FILE := $(LOCAL_PATH)/compatibility_matrix.xml
