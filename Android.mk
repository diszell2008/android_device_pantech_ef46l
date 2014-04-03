LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),ef46l)
    include $(call first-makefiles-under,$(LOCAL_PATH))
endif
