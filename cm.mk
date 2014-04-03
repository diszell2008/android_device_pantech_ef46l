# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 540
TARGET_SCREEN_HEIGHT := 960

# Release name
PRODUCT_RELEASE_NAME := ef46l
PRODUCT_NAME := cm_ef46l

$(call inherit-product, device/sky/ef46l/full_xt897.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_BRAND=sky PRODUCT_NAME=ef46l BUILD_PRODUCT=ef46l BUILD_FINGERPRINT=SKY/SKY_IM-A830L/ef46l:4.1.2/JZO54K/S1232214.EF46L_002:user/release-keys

