
AESDSOCKET_VERSION = '711f3b51156bd9f2b83a77e641c9a33c8d9466e6'
AESDSOCKET_SITE = 'git@github.com:maanika/aeld-assignments-3-and-later.git'
AESDSOCKET_SITE_METHOD = git
AESDSOCKET_GIT_SUBMODULES = YES

define AESDSOCKET_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

define AESDSOCKET_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin
	$(INSTALL) -D -m 0755 $(@D)/server/aesdsocket-start-stop $(TARGET_DIR)/etc/init.d/S99aesdsocket
endef

$(eval $(generic-package))

