LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

# Turn on Taint Tracking
ifeq ($(WITH_TAINT_TRACKING),true)
  LOCAL_CFLAGS += -DWITH_TAINT_TRACKING
endif

LOCAL_SRC_FILES:= sdcard.c
LOCAL_MODULE:= sdcard

LOCAL_SHARED_LIBRARIES := libc

include $(BUILD_EXECUTABLE)
