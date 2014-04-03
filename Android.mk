LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),ef46l)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif

