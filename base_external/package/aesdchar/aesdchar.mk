AESDCHAR_VERSION = '42094b8390b4f5265ff0d6f9264c54b9f0505285'
AESDCHAR_SITE = 'git@github.com:maanika/aeld-assignments-3-and-later.git'
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES

AESDCHAR_MODULE_SUBDIRS += aesd-char-driver

AESDCHAR_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)

define AESDCHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
endef

#generates all the appropriate Makefile rules and variables to build a kernel module
$(eval $(kernel-module)) 

$(eval $(generic-package))
