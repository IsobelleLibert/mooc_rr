all: slides_environment.pdf

%.pdf: %.tex
	lualatex -shell-escape $^

%.tex: %.org
	emacs -q -batch $^ --funcall org-beamer-export-to-latex
