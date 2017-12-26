ifeq (aarch64,$(ARCH))

ifeq (ve,$(IMAGE_CLASS))

ve/arm64-mate-rpi3: ve/systemd-bare \
	use/arm64
	@$(call add,THE_LISTS,arm64-mate)
	@$(call add,THE_LISTS,$(call tags,alterator))
	@$(call add,THE_PACKAGES,fbset alterator-fbi)

ve/arm64-mate: ve/systemd-bare \
	use/x11/mate use/x11/lightdm/gtk \
	use/arm64
	@$(call add,THE_LISTS,arm64-base)
	@$(call add,THE_LISTS,$(call tags,alterator))
	@$(call add,THE_PACKAGES,fbset alterator-fbi)

ve/arm64-icewm: ve/systemd-bare \
	use/x11/icewm use/x11/lightdm/gtk \
	use/arm64
	@$(call add,THE_LISTS,arm64-base)
	@$(call add,THE_LISTS,$(call tags,alterator))
	@$(call add,THE_PACKAGES,fbset alterator-fbi)

ve/arm64-icex: ve/systemd-bare \
	use/x11/icewm use/x11/lightdm/gtk \
	use/arm64
	@$(call add,THE_LISTS,arm64-base)
	@$(call add,THE_LISTS,arm64-icex)
	@$(call add,THE_LISTS,$(call tags,alterator))
	@$(call add,THE_PACKAGES,fbset alterator-fbi)

endif

endif
