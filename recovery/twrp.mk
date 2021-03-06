#
# This is for TWRP Recovery
#

# user interface
TW_THEME := portrait_hdpi
TW_MAX_BRIGHTNESS := 4096
TW_DEFAULT_BRIGHTNESS := 255
TW_NEW_ION_HEAP := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_SCREEN_BLANK_ON_BOOT := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"

# timekeep
TARGET_RECOVERY_QCOM_RTC_FIX := true

# init
TW_EXCLUDE_DEFAULT_USB_INIT := true

# features
TW_USE_TOOLBOX := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_REPACKTOOLS := true
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true

# storage
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_FUSE_EXFAT := true
TW_FLASH_FROM_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TARGET_NO_SEPARATE_RECOVERY := true

# crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/bootdevice/by-name/userdata"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,barrier=1,noauto_da_alloc,discard"
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_KEY_LOC := "footer"

# init
PRODUCT_PACKAGES += \
    twrp.fstab \
    prepdecrypt.sh \
    init.recovery.twrp \
    init.recovery.usb \
    init.recovery.keymaster \
    preptouch.sh \
    twrp_manifest
