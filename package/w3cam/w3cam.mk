###############################################################################
#
# w3cam
#
###############################################################################
W3CAM_VERSION = 0.7.2
W3CAM_SOURCE = w3cam-$(W3CAM_VERSION).tar.gz
W3CAM_SITE = http://mpx.freeshell.net
W3CAM_DEPENDENCIES = jpeg libpng libv4l freetype
#W3CAM_INSTALL_TARGET_OPT = PREFIX=$(TARGET_DIR)/usr
W3CAM_CONF_OPT += --with-device=/dev/video0 --with-ttf-inc=$(STAGING_DIR)/usr/include/freetype2/freetype

#W3CAM_AUTORECONF = YES
#W3CAM_STAGING = YES
#W3CAM_INSTALL_TARGET = YES



#define W3CAM_BUILD_CMDS
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) USE_LIBV4L2=true -C $(@D)
#endef

define W3CAM_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/w3cam.cgi $(TARGET_DIR)/usr/lib/cgi-bin/w3cam.cgi
	$(INSTALL) -m 0755 -D $(@D)/w3cam.cgi.scf $(TARGET_DIR)/usr/lib/cgi-bin/w3cam.cgi.scf
	$(INSTALL) -m 0755 -D $(@D)/w3camd/w3camd $(TARGET_DIR)/usr/sbin/
	$(INSTALL) -m 0755 -D $(@D)/vidcat $(TARGET_DIR)/usr/bin/
endef




$(eval $(autotools-package))
