all: slides_environment.pdf

%.pdf: %.tex
	lualatex -shell-escape $^

%.tex: %.org
	emacs -q -batch --eval="(setq enable-local-eval t)" --eval="(setq enable-local-variables t)" $^ --funcall org-beamer-export-to-latex
