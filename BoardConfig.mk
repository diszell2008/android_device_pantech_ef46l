#inherit from the common blue definitions
include device/pantech/blue-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH += device/pantech/ef46l/include

TARGET_KERNEL_CONFIG := msm8960_ef46l_tp30_user_defconfig
TARGET_KERNEL_SOURCE            := kernel/pantech/ef47s
BOARD_KERNEL_BASE               := 0x80200000
BOARD_KERNEL_CMDLINE            := console=ttyHSL0,115200,n8 androidboot.hardware=qcom androidboot.carrier=SKT-KOR user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=2 loglevel=0
BOARD_KERNEL_PAGESIZE           := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01400000
# Partition information
BOARD_VOLD_MAX_PARTITIONS := 18

# the following two sizes are generous guesses
# since these partitions are not visible
BOARD_BOOTIMAGE_PARTITION_SIZE          := 9437184
BOARD_RECOVERYIMAGE_PARTITION_SIZE      := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE        := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE      := 58589934592
BOARD_FLASH_BLOCK_SIZE                  := 131072       # (BOARD_KERNEL_PAGESIZE * 64)


BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/pantech/ef46l/bluetooth

TARGET_LS_USE_ALS_NODE := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true

TARGET_OTA_ASSERT_DEVICE := IM-A830L,ef46l

BOARD_HARDWARE_CLASS := device/pantech/ef46l/cmhw

# inherit from the proprietary version
-include vendor/pantech/ef46l/BoardConfigVendor.mk
