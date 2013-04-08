###############################################################################
#
# motion
#
###############################################################################
MOTION_VERSION = 20120605-224837
MOTION_SOURCE = motion-$(MOTION_VERSION).tar.gz
MOTION_SITE = http://www.lavrsen.dk/sources/motion-daily
MOTION_DEPENDENCIES = jpeg
MOTION_CONF_OPT = --without-optimizecpu \
		--without-ffmpeg \
	        --without-jpeg-mmx \
	        --without-sdl \
	        --without-mysql \
	        --without-pgsql \
	        --without-sqlite3

$(eval $(autotools-package))
