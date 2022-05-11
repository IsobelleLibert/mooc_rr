include LaTeX.mk

include archi_basics.mk
include archi_process.mk
include archi_chroot.mk

PDFTEX2CREATE_LIST=$(patsubst %.svg,%.pdftex,$(FIGS2CREATE_LIST))
PDF2CREATE_LIST=$(patsubst %.pdftex,%.pdf,$(PDFTEX2CREATE_LIST))

# img/%.pdf: img/%.pdftex
# 	cp $< $@

img/%.pdf: img/%.svg
	inkscape -A $@ $<

all: $(PDF2CREATE_LIST)

