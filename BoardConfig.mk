#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include device/motorola/msm8916-common/BoardConfigCommon.mk

-include vendor/motorola/osprey/BoardConfigVendor.mk

DEVICE_PATH := device/motorola/osprey

# Asserts
TARGET_OTA_ASSERT_DEVICE := osprey,osprey_umts,osprey_u2,osprey_ud2,osprey_uds,osprey_cdma,osprey_sprint,osprey_udstv
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Init
TARGET_LIBINIT_DEFINES_FILE := $(DEVICE_PATH)/init/init_osprey.cpp

# Kernel
TARGET_KERNEL_CONFIG := osprey_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216     # 16384 * 1024 mmcblk0p31
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16879616 # 16484 * 1024 mmcblk0p32
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2432696320 # 2375680 * 1024 mmcblk0p41
BOARD_PERSISTIMAGE_PARTITION_SIZE := 8388608   # 8192 * 1024 mmcblk0p29
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4865261568 # 4751232 * 1024 mmcblk0p42

# Power
TARGET_POWERHAL_VARIANT := qcom

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop


# Block_Build
Bliss_Build_Block:=1

# Blissful building options
BLISSIFY := true
BLISS_O3 := true
BLISS_GRAPHITE := true
#BLISS_STRICT := true
BLISS_KRAIT := true
BLISS_PIPE := true
FLOOP_NEST_OPTIMIZE := true
ENABLE_GCCONLY := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
FAST_MATH := true
ENABLE_MODULAR_O3 := true
ENABLE_LTO := true
LINK_TIME_OPTIMIZATIONS := true
TARGET_USE_ION_COMPAT := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_ENABLE_UKM := true
BLISS_DEVELOPER := Vatsal

#WITH_LZMA_OTA := true
#SaberMod

# Kernel Toolchain
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-linux-androideabi-4.9/bin
KERNEL_TOOLCHAIN_PREFIX := arm-linux-androideabi-
