include $(TOPDIR)/rules.mk

PKG_NAME:=syslog_fc
PKG_VERSION:=1.14
PKG_RELEASE:=$(AUTORELEASE)

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/namedun/syslog_fc.git
PKG_SOURCE_DATE:=2020-25-07
PKG_SOURCE_VERSION:=873ae0a6224e9b2829507966545be2e438f3a9d4
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Eliminater74 (eliminater74@gmail.com)
PKG_LICENSE:=WTFPL

CMAKE_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/nls.mk
include $(INCLUDE_DIR)/cmake.mk

#CMAKE_OPTIONS += -DCMAKE_BUILD_TYPE=Release .

define Package/syslog_fc
  SECTION:=base
  TITLE:=Syslog File Converter
  URL:=https://github.com/namedun/syslog_fc
endef

define Package/syslog_fc/description
  Syslog File Converter:
  This utility is designed to convert syslog files to various other text formats, such as CSV, HTML or JSON (full list of the supported output formats are listed below in the "Supported Output Formats" section).
endef

define Package/syslog_fc/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/syslog_fc $(1)/usr/bin/syslog_fc
endef

$(eval $(call BuildPackage,syslog_fc))
