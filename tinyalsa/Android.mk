LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_OVERRIDES_PACKAGES := libtinyalsa
LOCAL_SRC_FILES:= mixer.c pcm.c
LOCAL_MODULE := libtinyalsa
LOCAL_SHARED_LIBRARIES:= libcutils libutils
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_OVERRIDES_PACKAGES := tinymix
LOCAL_SRC_FILES:= tinymix.c
LOCAL_MODULE := tinymix
LOCAL_SHARED_LIBRARIES:= libcutils libutils libtinyalsa
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)