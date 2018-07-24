all: gitlab.html emacs_orgmode.html  jupyter.html  rstudio.html maintaining_a_journal.html

NLINES=10000000

%.html: %.org
	emacs -batch $^  --funcall org-html-export-to-html
	sed -i -e 's/<pre /<pre style="padding-left: 30px; background-color: #f6f8fa;" /g' \
	       -e 's/<li>/<li style="margin-bottom:0;">/g' \
	       -e 's/<ul>/<ul style="margin:0 0;">/g' $@
	mv $@ $@.bak
	cat $@.bak | grep -A $(NLINES) -e '<body>' | grep -B $(NLINES) -e '<div id="postamble" class="status">' | grep -v -e '<body>' -e '<div id="postamble" class="status">' > $@
	rm $@.bak
