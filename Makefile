ressources-md:
	for i in module1/ressources module2/ressources module2/slides module3/ressources \
	    module4/ressources module5/ressources; do \
	     make -C $$i ressources-md; \
	done
