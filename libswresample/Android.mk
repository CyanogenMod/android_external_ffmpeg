#
# Copyright (C) 2013 The Android-x86 Open Source Project
#
# Licensed under the GNU General Public License Version 2 or later.
# You may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.gnu.org/licenses/gpl.html
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
FFMPEG_MULTILIB := 32
include $(LOCAL_PATH)/../android/build.mk

LOCAL_MULTILIB := $(FFMPEG_MULTILIB)

# We probably should make this a default. Mediaserver is still fully 32
ifeq ($(BOARD_FFMPEG_32BIT_ONLY),true)
LOCAL_32_BIT_ONLY := true
endif

include $(BUILD_SHARED_LIBRARY)


# We probably should make this a default. Mediaserver is still fully 32
ifeq ($(BOARD_FFMPEG_32BIT_ONLY),true)

include $(CLEAR_VARS)
FFMPEG_MULTILIB := 64
include $(LOCAL_PATH)/../android/build.mk

LOCAL_MULTILIB := $(FFMPEG_MULTILIB)

include $(BUILD_SHARED_LIBRARY)

endif
