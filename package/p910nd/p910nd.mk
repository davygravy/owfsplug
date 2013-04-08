#############################################################
#
# p910nd
#
#############################################################

P910ND_VERSION = 0.95
P910ND_SITE = http://$(BR2_SOURCEFORGE_MIRROR).dl.sourceforge.net/sourceforge/p910nd/$(P910ND_VERSION)
P910ND_SOURCE = p910nd-$(P910ND_VERSION).tar.bz2

define P910ND_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) $(P910ND_MAKE_OPTS) -C $(@D)
endef

define P910ND_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/p910nd $(TARGET_DIR)/usr/sbin/p910nd
	$(INSTALL) -m 0644 -D package/p910nd/p910nd.conf $(TARGET_DIR)/etc/default/p910nd.conf
	$(INSTALL) -m 0755 -D package/p910nd/S55p910nd $(TARGET_DIR)/etc/init.d/S55p910nd
endef

#$(eval $(call GENTARGETS))
$(eval $(generic-package))
