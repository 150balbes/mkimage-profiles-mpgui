# DistroCreator images

ifeq (distro,$(IMAGE_CLASS))

distro/distrocreator:  distro/.desktop-network use/branding/complete use/firmware use/x11/xorg
	@$(call add,THE_PACKAGES,installer-feature-desktop-other-fs-stage2)
	@$(call set,BRANDING,altlinux-sisyphus)
	@$(call set,INSTALLER,club)
	@$(call set,ISOHYBRID=1)
	@$(call add,BASE_LISTS,common sysvinit wmaker wmsmall_base distrocreator)

distro/regular-Coderlive:   distro/.regular-gtk \
    use/fonts/ttf/google use/domain-client/full \
    use/net/nm/mmgui \
    use/dev/builder/full use/live/repo/online +power \
    use/browser/seamonkey/i18n use/live/base use/firmware/laptop \
    use/live/rw use/live/textinstall use/isohybrid use/syslinux/timeout/30 \
    use/stage2/net-eth use/net-eth/dhcp \
    use/wireless/full
    @$(call add,LIVE_PACKAGES,installer-feature-no-xconsole-stage3)
    @$(call add,LIVE_LISTS,Coderlive)
    @$(call add,LIVE_LISTS,Users-pkg)
    @$(call add,DEFAULT_SERVICES_ENABLE,gpm)
    @$(call add,LIVE_PACKAGES,coderlive)

endif
