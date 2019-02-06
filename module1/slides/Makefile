PATH_LOCAL=~/public_html/PITCHME/
PATH_BIN=../bin/
PATH_ASSETS=../assets/

sync_local: PITCHME.md
	mkdir -p $(PATH_LOCAL)/assets/md/img/
	cp PITCHME.md $(PATH_LOCAL)/assets/md/PITCHME.md
	cp $(PATH_ASSETS)/img/* $(PATH_LOCAL)/assets/img/

$(PATH_LOCAL)/assets/md/PITCHME.md: PITCHME.md
	sed 's|https://rawgit.com/alegrand/RR_MOOC/master/||g' < $< > $@

C028AL_slides_module1-en-gz.pdf: slides_module1.pdf
	mv $< $@

C028AL_slides_module1-fr-gz.pdf: diapos_module1.pdf
	mv $< $@

%-gz.pdf: %.pdf
	gzprez $<

%.pdf: %.tex
	pdflatex --shell-escape $^
	pdflatex --shell-escape $^

%.tex: %.org
	emacs -batch $^  --funcall org-beamer-export-to-latex
	sed -i -e 's|includegraphics\(.*\)../assets/img/|includegraphics\1../assets/img/thumbnail/|' -e 's/\.png}/.jpg}/i' -e 's/\.JPG}/.jpg}/i' $@
