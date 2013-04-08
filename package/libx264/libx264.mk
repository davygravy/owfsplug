#############################################################
#
# libx264
#
#############################################################
LIBX264_VERSION = 20130111-2245
LIBX264_SOURCE = x264-snapshot-$(LIBX264_VERSION)-stable.tar.bz2
LIBX264_SITE = http://download.videolan.org/pub/videolan/x264/snapshots
LIBX264_INSTALL_STAGING = YES
#LIBX264_CONF_OPT = --enable-static --disable-asm --disable-shared
LIBX264_CONF_OPT = --disable-asm --enabled-shared


$(eval $(autotools-package))
