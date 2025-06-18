
##############################################################
#
# LDD
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LDD_VERSION = 'd473accb3301a1d2c1527ca589aa160f4c0cbf5a'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com/cu-ecen-aeld/assignment-7-RubiGeek.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_DEPENDENCIES = kernel-module		
LDD_DEPENDENCIES += generic-package
LDD_MODULE_SUBDIRS = misc-modules
LDD_MODULE_SUBDIRS += scull

define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/misc-modules/*  $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/*  $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
$(eval $(kernel-module))