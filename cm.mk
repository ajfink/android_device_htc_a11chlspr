## Specify phone tech before including full_phone
# $(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := a11

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/a11chlspr/device_a11chlspr.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a11chlspr
PRODUCT_NAME := cm_a11chlspr
PRODUCT_BRAND := htc
PRODUCT_MODEL := Desire 510
PRODUCT_MANUFACTURER := htc
