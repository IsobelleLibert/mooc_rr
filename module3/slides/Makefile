C028AL_slides_module3-fr.pdf: diapos-module3.pdf
	mv $< $@

C028AL_slides_module3-en.pdf: slides-module3.pdf
	mv $< $@

%.pdf: %.tex
	pdflatex --shell-escape $^
	pdflatex --shell-escape $^

%.tex: %.org
	emacs -batch $^  --funcall org-beamer-export-to-latex

images: analyse-traditionnelle-3-svg.pdf traditional-analysis-3-svg.pdf analyse-replicable-3-svg.pdf replicable-analysis-3-svg.pdf

%-svg.pdf: %.svg
	/Applications/Inkscape.app/Contents/Resources/bin/inkscape  -D -z --file=$(abspath $<) --export-pdf=$(abspath $@)
