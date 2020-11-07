LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := wvm_shim.cpp
LOCAL_SHARED_LIBRARIES := libstagefright_foundation
LOCAL_MODULE := libshim_wvm
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_SHARED_LIBRARY)

## libshim_atomic
include $(CLEAR_VARS)
LOCAL_SRC_FILES := atomic.cpp
LOCAL_MODULE := libshim_atomic
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

## liblog
include $(CLEAR_VARS)
LOCAL_SRC_FILES := stdio_vsnprintf.cpp
LOCAL_C_INCLUDES := bionic/libc/stdio
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_MODULE := libs
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)



## EGL Shim
include $(CLEAR_VARS)
LOCAL_SRC_FILES := egl_shim.cpp
LOCAL_MODULE := libshim_egl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

## libnvomxadaptor_shim
include $(CLEAR_VARS)
LOCAL_SRC_FILES := libnvomxadaptor_shim.cpp
LOCAL_SHARED_LIBRARIES          += libui libgui libstagefright_foundation
LOCAL_C_INCLUDES                += framework/native/include frameworks/av/include
LOCAL_CFLAGS                    += -Wno-unused-private-field
LOCAL_MODULE := libnvomxadaptor_shim
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)



