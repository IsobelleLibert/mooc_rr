img/archi_process_1.svg: img/archi_process.svg img/archi_process.subfig
	/usr/share/texmf/scripts/latex-make/svgdepth.py  < $< > $@ machine files environment cloud

img/archi_process_2.svg: img/archi_process.svg img/archi_process.subfig
	/usr/share/texmf/scripts/latex-make/svgdepth.py  < $< > $@ machine files environment cloud process

img/archi_process_3.svg: img/archi_process.svg img/archi_process.subfig
	/usr/share/texmf/scripts/latex-make/svgdepth.py  < $< > $@ machine files environment cloud process kernel

IMG/ARCHI_PROCESS_FIGS := $(foreach n, 1 2 3 , img/archi_process_$(n).svg)
FILES_TO_DISTCLEAN += $(IMG/ARCHI_PROCESS_FIGS)
FIGS2CREATE_LIST += $(IMG/ARCHI_PROCESS_FIGS)
$(TEMPORAIRE): $(IMG/ARCHI_PROCESS_FIGS)
