define Device/generic
  DEVICE_VENDOR := Generic
  DEVICE_MODEL := x86/64
  DEVICE_PACKAGES += \
	kmod-e1000e kmod-e1000 \
	kmod-igb \
	kmod-macvlan kmod-drm-i915 \
	nftables
  GRUB2_VARIANT := generic
endef
TARGET_DEVICES += generic
