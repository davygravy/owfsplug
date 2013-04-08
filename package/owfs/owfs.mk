###############################################################################
#
# owfs
#
###############################################################################
OWFS_VERSION = 2.8p20
OWFS_SOURCE = owfs-$(OWFS_VERSION).tar.gz
OWFS_SITE =  http://downloads.sourceforge.net/project/owfs/owfs/$(OWFS_VERSION)
OWFS_INSTALL_STAGING = YES
OWFS_INSTALL_TARGET = YES
OWFS_CONF_OPT = --enable-owshell --enable-owhttpd --enable-owftpd \
--enable-owserver --enable-ownet --enable-ownetlib --enable-owtap \
--enable-owmon --enable-owcapi --disable-swig --enable-owperl \
--enable-owphp --enable-owpython --enable-owtcl --enable-parport --enable-usb --with-libusb-config="$(STAGING_DIR)/usr/bin/libusb-config"
OWFS_DEPENDENCIES = libfuse libusb libusb-compat
OWFS_AUTORECONF = YES

$(eval $(autotools-package))
$(eval $(host-autotools-package))

