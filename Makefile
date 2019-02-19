ressources-md:
	for i in module1/ressources module2/ressources module3/ressources \
	    module4/ressources; do \
	     make -C $$i; \
	done
