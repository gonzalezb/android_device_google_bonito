# Common board config for bonito, sargo

# Build vendor image
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2

BOARD_KERNEL_IMAGE_NAME := Image.lz4
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_ADDITIONAL_FLAGS := \
    DTC=$(shell pwd)/prebuilts/misc/$(HOST_OS)-x86/dtc/dtc \
    MKDTIMG=$(shell pwd)/prebuilts/misc/$(HOST_OS)-x86/libufdt/mkdtimg
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CONFIG := lineageos_bonito_defconfig
TARGET_KERNEL_SOURCE := kernel/google/msm-4.9

DEVICE_MANIFEST_FILE += device/google/bonito/lineage_manifest.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += device/google/bonito/lineage_compatibility_matrix.xml

include device/google/bonito/sepolicy-lineage/bonito-lineage-sepolicy.mk
-include vendor/google/bonito/BoardConfigVendor.mk
