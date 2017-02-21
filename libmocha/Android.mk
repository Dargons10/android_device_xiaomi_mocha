include $(call all-makefiles-under,$(LOCAL_PATH))

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := mocha_audio.c

LOCAL_SHARED_LIBRARIES := libicuuc libicui18n
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE := libmocha_audio
LOCAL_C_INCLUDES := \
    external/icu/icu4c/source/common

LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := sensor.c \
		camera.c
LOCAL_SHARED_LIBRARIES :=  libcamera_client libui libgui libutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE := libmocha_camera

LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := mocha_libwvm.c 
LOCAL_SHARED_LIBRARIES := libbinder libstagefright
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE := libmocha_wvm

LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
