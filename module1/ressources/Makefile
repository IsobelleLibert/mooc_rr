all: introduction_to_markdown.html

%.html: %.org
	emacs -batch $^  --funcall org-html-export-to-html
	sed -i 's/<pre /<pre style="padding-left: 30px; background-color: #f6f8fa;" /g' $@
