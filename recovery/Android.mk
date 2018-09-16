LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := charger
LOCAL_MODULE_TAGS := eng debug
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES_LOCAL
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_SRC_FILES := check.c
LOCAL_MODULE:= check
LOCAL_STATIC_LIBRARIES := libc libcutils libm libstdc++ libz
LOCAL_SHARED_LIBRARIES := libdl
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_MODULE_TAGS := eng debug optional
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_SRC_FILES := leds.c
LOCAL_MODULE:= leds
LOCAL_STATIC_LIBRARIES := libc libcutils libm libstdc++ libz
LOCAL_SHARED_LIBRARIES := libdl
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_MODULE_TAGS := eng debug optional
include $(BUILD_EXECUTABLE)
