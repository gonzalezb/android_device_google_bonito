# Boot animation
TARGET_SCREEN_HEIGHT := 2220
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_sargo.mk)

-include device/google/bonito/sargo/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_sargo
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3a
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sargo \
    PRIVATE_BUILD_DESC="sargo-user 9 PD2A.190115.032 5340326 release-keys"

BUILD_FINGERPRINT := google/sargo/sargo:9/PD2A.190115.032/5340326:user/release-keys

$(call inherit-product-if-exists, vendor/google/sargo/sargo-vendor.mk)