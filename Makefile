#
# Copyright (C) 2006-2020 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=usbnet
PKG_VERSION:=2.0.1
PKG_RELEASE=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)/config
config PACKAGE_$(PKG_NAME)_INCLUDE_USB2
	bool "Include kmod-usb2"
	default y

config PACKAGE_$(PKG_NAME)_INCLUDE_USB2_PCI
	bool "Include kmod-usb2-pci"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_USB3
	bool "Include kmod-usb3"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_NET
	bool "Include kmod-usb-net"
	default y

config PACKAGE_$(PKG_NAME)_INCLUDE_ASIX
	bool "Include kmod-usb-net-asix"
	default n
	
config PACKAGE_$(PKG_NAME)_INCLUDE_ASIX_AX88179
	bool "Include kmod-usb-net-asix-ax88179"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_CDC_EEM
	bool "Include kmod-usb-net-cdc-eem"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_CDC-ETHER
	bool "Include kmod-usb-net-cdc-ether"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_CDC_MBIM
	bool "Include kmod-usb-net-cdc-mbim"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_CDC_NCM
	bool "Include kmod-usb-net-cdc-ncm"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_CDC_SUBSET
	bool "Include kmod-usb-net-cdc-subset"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_DM9601_ETHER
	bool "Include kmod-usb-net-dm9601-ether"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_HSO
	bool "Include kmod-usb-net-hso"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_HUAWEI_CDC_NCM
	bool "Include kmod-usb-net-huawei-cdc-ncm"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_IPHETH
	bool "Include kmod-usb-net-ipheth"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_KALMIA
	bool "Include kmod-usb-net-kalmia"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_KAWETH
	bool "Include kmod-usb-net-kaweth"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_MCS7830
	bool "Include kmod-usb-net-mcs7830"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_PEGASUS
	bool "Include kmod-usb-net-pegasus"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_PL
	bool "Include kmod-usb-net-pl"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_QMI_WWAN
	bool "Include kmod-usb-net-qmi-wwan"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_RNDIS
	bool "Include kmod-usb-net-rndis"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_RTL8150
	bool "Include kmod-usb-net-rtl8150"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_RTL8152
	bool "Include kmod-usb-net-rtl8152"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_SUERRAWIRELESS
	bool "Include kmod-usb-net-sierrawireless"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_SMSC95XX
	bool "Include kmod-usb-net-smsc95xx"
	default n

config PACKAGE_$(PKG_NAME)_INCLUDE_SR9700
	bool "Include kmod-usb-net-sr9700"
	default n
endef

PKG_CONFIG_DEPENDS:= \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_USB2 \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_USB2_PCI \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_USB3 \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_NET \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_ASIX \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_ASIX_AX88179 \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_CDC_EEM \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_CDC-ETHER \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_CDC_MBIM \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_CDC_NCM \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_CDC_SUBSET \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_DM9601_ETHER \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_HSO \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_HUAWEI_CDC_NCM \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_IPHETH \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_KALMIA \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_KAWETH \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_MCS7830 \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_PEGASUS \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_PL \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_QMI_WWAN \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_RNDIS \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_RTL8150 \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_RTL8152 \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_SUERRAWIRELESS \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_SMSC95XX \
	CONFIG_PACKAGE_$(PKG_NAME)_INCLUDE_SR9700

define Package/usbnet
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Support automatic configuration of USB network sharing
  PKGARCH:=all
  DEPENDS:= \
     +mwan3 \
     +PACKAGE_$(PKG_NAME)_INCLUDE_USB2:kmod-usb2 \
     +PACKAGE_$(PKG_NAME)_INCLUDE_USB2_PCI:kmod-usb2-pci \
     +PACKAGE_$(PKG_NAME)_INCLUDE_USB3:kmod-usb3 \
     +PACKAGE_$(PKG_NAME)_INCLUDE_NET:kmod-usb-net \
     +PACKAGE_$(PKG_NAME)_INCLUDE_ASIX:kmod-usb-net-asix \
     +PACKAGE_$(PKG_NAME)_INCLUDE_ASIX_AX88179:kmod-usb-net-asix-ax88179 \
     +PACKAGE_$(PKG_NAME)_INCLUDE_CDC_EEM:kmod-usb-net-cdc-eem \
     +PACKAGE_$(PKG_NAME)_INCLUDE_CDC-ETHER:kmod-usb-net-cdc-ether \
     +PACKAGE_$(PKG_NAME)_INCLUDE_CDC_MBIM:kmod-usb-net-cdc-mbim \
     +PACKAGE_$(PKG_NAME)_INCLUDE_CDC_NCM:kmod-usb-net-cdc-ncm \
     +PACKAGE_$(PKG_NAME)_INCLUDE_CDC_SUBSET:kmod-usb-net-cdc-subset \
     +PACKAGE_$(PKG_NAME)_INCLUDE_DM9601_ETHER:kmod-usb-net-dm9601-ether \
     +PACKAGE_$(PKG_NAME)_INCLUDE_HSO:kmod-usb-net-hso \
     +PACKAGE_$(PKG_NAME)_INCLUDE_HUAWEI_CDC_NCM:kmod-usb-net-huawei-cdc-ncm \
     +PACKAGE_$(PKG_NAME)_INCLUDE_IPHETH:kmod-usb-net-ipheth \
     +PACKAGE_$(PKG_NAME)_INCLUDE_KALMIA:kmod-usb-net-kalmia \
     +PACKAGE_$(PKG_NAME)_INCLUDE_KAWETH:kmod-usb-net-kaweth \
     +PACKAGE_$(PKG_NAME)_INCLUDE_MCS7830:kmod-usb-net-mcs7830 \
     +PACKAGE_$(PKG_NAME)_INCLUDE_PEGASUS:kmod-usb-net-pegasus \
     +PACKAGE_$(PKG_NAME)_INCLUDE_PL:kmod-usb-net-pl \
     +PACKAGE_$(PKG_NAME)_INCLUDE_QMI_WWAN:kmod-usb-net-qmi-wwan \
     +PACKAGE_$(PKG_NAME)_INCLUDE_RNDIS:kmod-usb-net-rndis \
     +PACKAGE_$(PKG_NAME)_INCLUDE_RTL8150:kmod-usb-net-rtl8150 \
     +PACKAGE_$(PKG_NAME)_INCLUDE_RTL8152:kmod-usb-net-rtl8152 \
     +PACKAGE_$(PKG_NAME)_INCLUDE_SUERRAWIRELESS:kmod-usb-net-sierrawireless \
     +PACKAGE_$(PKG_NAME)_INCLUDE_SMSC95XX:kmod-usb-net-smsc95xx \
     +PACKAGE_$(PKG_NAME)_INCLUDE_SR9700:kmod-usb-net-sr9700
endef

define Package/usbnet/description
Support automatic configuration of USB network sharing
endef

define Build/Compile
endef

define Package/usbnet/install
$(CP) ./files/* $(1)
endef

$(eval $(call BuildPackage,usbnet))
