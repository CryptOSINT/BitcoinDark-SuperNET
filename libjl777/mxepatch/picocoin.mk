# This file is part of MXE.
# See index.html for further information.

PKG             := picocoin
$(PKG)_IGNORE   :=
$(PKG)_VERSION  := 0.1
$(PKG)_CHECKSUM := cecd5a7f3d0cdfa2846bbd56ff1f0d562ea79a91a423bae5418141b8204950e5
$(PKG)_SUBDIR   := picocoin-$($(PKG)_VERSION)
$(PKG)_FILE     := $($(PKG)_VERSION).tar.gz
$(PKG)_URL      := https://github.com/mezzovide/picocoin/archive/$($(PKG)_FILE)
$(PKG)_DEPS     := gcc cmake autoconf automake jansson libevent openssl

define $(PKG)_UPDATE
	echo 'TODO: Updates for package picocoin need to be fixed.' >&2;
	echo $($(PKG)_VERSION)
endef

define $(PKG)_BUILD
    cd '$(1)' && autoreconf -ifv && ./configure \
	CC=$(PREFIX)/bin/$(TARGET)-gcc \
	--host=$(TARGET) \
	--prefix=$(PREFIX)/$(TARGET)
 
    $(MAKE) -C '$(1)/lib' -j '$(JOBS)' && cp $(1)/lib/libccoin.a $(PREFIX)/$(TARGET)/lib/libccoin.a
endef
