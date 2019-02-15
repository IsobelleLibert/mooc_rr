C028AL_slides_module3-fr.pdf: diapos-module3.pdf
	mv $< $@

C028AL_slides_module3-en.pdf: slides-module3.pdf
	mv $< $@

%.pdf: %.tex
	pdflatex --shell-escape $^
	pdflatex --shell-escape $^

%.tex: %.org
	emacs -batch $^  --funcall org-beamer-export-to-latex

images: img/analyse-traditionnelle-3-svg.pdf img/traditional-analysis-3-svg.pdf img/analyse-replicable-3-svg.pdf img/replicable-analysis-3-svg.pdf

img/%-svg.pdf: img/%.svg
# /Applications/Inkscape.app/Contents/Resources/bin/ # for MacOSX
	inkscape  -D -z --file=$(abspath $<) --export-pdf=$(abspath $@)
