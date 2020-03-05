img/archi_chroot_1.svg: img/archi_chroot.svg img/archi_chroot.subfig
	/usr/share/texmf/scripts/latex-make/svgdepth.py  < $< > $@ machine files environment cloud kernel process

img/archi_chroot_2.svg: img/archi_chroot.svg img/archi_chroot.subfig
	/usr/share/texmf/scripts/latex-make/svgdepth.py  < $< > $@ machine files environment cloud kernel process chroot_dir

img/archi_chroot_3.svg: img/archi_chroot.svg img/archi_chroot.subfig
	/usr/share/texmf/scripts/latex-make/svgdepth.py  < $< > $@ machine files environment cloud kernel process chroot_dir chroot_arch

img/archi_chroot_4.svg: img/archi_chroot.svg img/archi_chroot.subfig
	/usr/share/texmf/scripts/latex-make/svgdepth.py  < $< > $@ machine files environment cloud kernel process chroot_dir chroot_arch namespace

img/archi_chroot_5.svg: img/archi_chroot.svg img/archi_chroot.subfig
	/usr/share/texmf/scripts/latex-make/svgdepth.py  < $< > $@ machine files environment cloud kernel process chroot_dir chroot_arch namespace cgroups

IMG/ARCHI_CHROOT_FIGS := $(foreach n, 1 2 3 4 5 , img/archi_chroot_$(n).svg)
FILES_TO_DISTCLEAN += $(IMG/ARCHI_CHROOT_FIGS)
FIGS2CREATE_LIST += $(IMG/ARCHI_CHROOT_FIGS)
$(TEMPORAIRE): $(IMG/ARCHI_CHROOT_FIGS)
