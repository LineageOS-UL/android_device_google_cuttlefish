#
# Copyright 2020 The Android Open-Source Project
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

#
# x86 (32-bit kernel) target for Cuttlefish
#

TARGET_BOARD_PLATFORM := vsoc_x86
TARGET_ARCH := x86
TARGET_ARCH_VARIANT := x86
TARGET_CPU_ABI := x86

TARGET_KERNEL_ARCH ?= i686
TARGET_KERNEL_USE ?= 6.1
KERNEL_MODULES_PATH := device/google/cuttlefish_prebuilts/kernel/$(TARGET_KERNEL_USE)-$(TARGET_KERNEL_ARCH)
TARGET_KERNEL_PATH := $(KERNEL_MODULES_PATH)/kernel-$(TARGET_KERNEL_USE)
# FIXME: system_dlkm should be specified as well

-include device/google/cuttlefish/shared/BoardConfig.mk
-include device/google/cuttlefish/shared/bluetooth/BoardConfig.mk
-include device/google/cuttlefish/shared/camera/BoardConfig.mk
-include device/google/cuttlefish/shared/gnss/BoardConfig.mk
-include device/google/cuttlefish/shared/graphics/BoardConfig.mk
-include device/google/cuttlefish/shared/identity/BoardConfig.mk
-include device/google/cuttlefish/shared/reboot_escrow/BoardConfig.mk
-include device/google/cuttlefish/shared/sensors/BoardConfig.mk
-include device/google/cuttlefish/shared/swiftshader/BoardConfig.mk
-include device/google/cuttlefish/shared/telephony/BoardConfig.mk
-include device/google/cuttlefish/shared/vibrator/BoardConfig.mk
-include device/google/cuttlefish/shared/virgl/BoardConfig.mk
