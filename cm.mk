$(call inherit-product, device/pantech/ef46l/full_ef46l.mk)

# Inherit CM common GSM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
#$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SKY_IM-A830L BUILD_FINGERPRINT=SKY/SKY_IM-A830L/ef46l:4.1.2/JZO54K/S1232214.EF46L_002:user/release-keys

PRODUCT_NAME := cm_ef46l
PRODUCT_DEVICE := ef46l
