all: introduction_to_markdown.html


NLINES=10000000

%.html: %.org
	emacs -batch $^  --funcall org-html-export-to-html
	sed -i 's/<pre /<pre style="padding-left: 30px; background-color: #f6f8fa;" /g' $@
	sed -i 's/<li>/<li style="margin-bottom:0;">/g' $@
	mv $@ $@.bak
	cat $@.bak | grep -A $(NLINES) -e '<body>' | grep -B $(NLINES) -e '<div id="postamble" class="status">' | grep -v -e '<body>' -e '<div id="postamble" class="status">' > $@
	rm $@.bak
