include $(call all-makefiles-under,$(LOCAL_PATH))

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := sensor.c \
		camera.c
LOCAL_SHARED_LIBRARIES :=  libcamera_client libui libgui libutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE := libmocha_camera
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := mocha_omx.c
LOCAL_SHARED_LIBRARIES := libbinder
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE := libmocha_omx
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_SRC_FILES := powerservice_client.c 
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE := libpowerservice_client
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

