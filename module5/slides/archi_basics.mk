img/archi_basics_1.svg: img/archi_basics.svg img/archi_basics.subfig
	/usr/share/texmf/scripts/latex-make/svgdepth.py  < $< > $@ machine

img/archi_basics_2.svg: img/archi_basics.svg img/archi_basics.subfig
	/usr/share/texmf/scripts/latex-make/svgdepth.py  < $< > $@ machine code

img/archi_basics_3.svg: img/archi_basics.svg img/archi_basics.subfig
	/usr/share/texmf/scripts/latex-make/svgdepth.py  < $< > $@ machine code files

img/archi_basics_4.svg: img/archi_basics.svg img/archi_basics.subfig
	/usr/share/texmf/scripts/latex-make/svgdepth.py  < $< > $@ machine code files environment

img/archi_basics_5.svg: img/archi_basics.svg img/archi_basics.subfig
	/usr/share/texmf/scripts/latex-make/svgdepth.py  < $< > $@ machine code files environment cloud

img/archi_basics_6.svg: img/archi_basics.svg img/archi_basics.subfig
	/usr/share/texmf/scripts/latex-make/svgdepth.py  < $< > $@ machine code files environment cloud separation

IMG/ARCHI_BASICS_FIGS := $(foreach n, 1 2 3 4 5 6 , img/archi_basics_$(n).svg)
FILES_TO_DISTCLEAN += $(IMG/ARCHI_BASICS_FIGS)
FIGS2CREATE_LIST += $(IMG/ARCHI_BASICS_FIGS)
$(TEMPORAIRE): $(IMG/ARCHI_BASICS_FIGS)
