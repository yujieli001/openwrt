# SPDX-License-Identifier: GPL-2.0-or-later

include $(TOPDIR)/rules.mk

PKG_NAME:=nu801
PKG_FLAGS:=nonshared
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/chunkeey/nu801.git
PKG_SOURCE_VERSION:=f623879a393d0315f29095fe46b19cd2246d10d7
PKG_MIRROR_HASH:=db21671a1c14f0bfeb65525cbfd0576d2d5bbebf3901e35e64f9bf92a9a53b0d
PKG_MAINTAINER:=Christian Lamparter <chunkeey@gmail.com>
PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/nu801
  SECTION:=utils
  CATEGORY:=Utilities
  SUBMENU:=Userspace GPIO Drivers
  DEPENDS:=@(TARGET_ath79_nand||TARGET_bcm53xx||TARGET_x86)
  KCONFIG:=CONFIG_GPIO_CDEV=y
  TITLE:=NU801 LED Driver
endef

define Package/nu801/description
This package contains a userspace driver to power the NUMEN Tech. NU801 LED Driver.
endef

define Package/nu801/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/nu801 $(1)/usr/sbin/
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/nu801.init $(1)/etc/init.d/nu801
endef

$(eval $(call BuildPackage,nu801))
