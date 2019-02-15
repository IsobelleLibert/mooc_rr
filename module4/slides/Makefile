C028AL_slides_module4-en-gz.pdf: slides_module4.pdf
	mv $< $@

C028AL_slides_module4-fr-gz.pdf: diapos_module4.pdf
	mv $< $@

%-gz.pdf: %.pdf
	gzprez $<

%.pdf: %.tex
	pdflatex --shell-escape $^
	pdflatex --shell-escape $^

%.tex: %.org
	emacs -batch --eval "(setq enable-local-eval t)" --eval "(setq enable-local-variables t)" $^ --funcall org-beamer-export-to-latex
	# sed -i -e 's|includegraphics\(.*\)../assets/img/|includegraphics\1../assets/img/thumbnail/|' -e 's/\.png}/.jpg}/i' $@
