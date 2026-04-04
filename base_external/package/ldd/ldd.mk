
LDD_VERSION = '68f33b04b28340858ad442beab82bbb69ede0fb3'
LDD_SITE = 'git@github.com:maanika/aeld-assignment-7.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS += misc-modules
LDD_MODULE_SUBDIRS += scull

LDD_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)

#generates all the appropriate Makefile rules and variables to build a kernel module
$(eval $(kernel-module)) 

$(eval $(generic-package))
