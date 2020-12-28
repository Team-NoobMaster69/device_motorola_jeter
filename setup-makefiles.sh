#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

# Required!
export DEVICE=jeter
export BOARD_COMMON=msm8937-common
export VENDOR=motorola

"./../../${VENDOR}/${BOARD_COMMON}/setup-makefiles.sh" "$@"
