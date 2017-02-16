# Inherit device configuration for mocha.
$(call inherit-product, device/xiaomi/mocha/full_mocha.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := cm_mocha
BOARD_VENDOR := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
