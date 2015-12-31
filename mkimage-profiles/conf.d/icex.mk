# icex-builder images

ifeq (distro,$(IMAGE_CLASS))

distro/regular-icex: distro/.regular-gtk +power \
	use/browser/seamonkey/i18n use/live/base use/firmware \
	use/live/rw use/live/textinstall use/isohybrid use/syslinux/timeout/30 \
	use/stage2/net-eth use/net-eth/dhcp
	@$(call add,LIVE_LISTS,icex)
	@$(call add,LIVE_LISTS,Users-pkg)
	@$(call set,THE_IMAGEWRITER,rosa-imagewriter)

distro/regular-icex-builder: distro/regular-icex use/dev/builder/full use/live/repo/online
	@$(call add,LIVE_KMODULES,virtualbox)
	@$(call add,LIVE_LISTS,Users-pkg)
	@$(call add,LIVE_LISTS,icex-builder)
	@$(call add,LIVE_PACKAGES,idesk-icon-icex-builder)
	@$(call add,DEFAULT_SERVICES_ENABLE,gpm)

endif
