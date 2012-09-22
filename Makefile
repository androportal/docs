# Make file for APL docs

.PHONY: all c cpp py sci devel clean sclean clean-all

all: c cpp py sci devel

c:
	cd individual/; make c

cpp:
	cd individual/; make cpp

py:
	cd individual/; make py

sci:
	cd individual/; make sci

devel:
	@echo "generating sphinx for APL"
	cd devel/; make html

clean:	
	cd devel/; make clean
	-rm -rvf *~	

sclean:
	cd devel/; make sclean
	cd individual/; make sclean

clean-all: clean 
	cd individual/; make clean
