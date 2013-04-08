###############################################################################
#
# temploggerd
#
###############################################################################
TEMPLOGGERD_VERSION = 1.3.8
TEMPLOGGERD_SOURCE = temploggerd-$(TEMPLOGGERD_VERSION).tar.gz
TEMPLOGGERD_SITE =  http://downloads.sourceforge.net/project/owfs/temploggerd/$(TEMPLOGGERD_VERSION)
TEMPLOGGERD_DEPENDENCIES = owfs rrdtool
TEMPLOGGERD_AUTORECONF = YES

$(eval $(autotools-package))
