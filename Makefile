# Make file for APL docs

all: APL c cpp py sci

c:
	cd individual/; make c

cpp:
	cd individual/; make cpp

py:
	cd individual/; make py

sci:
	cd individual/; make sci

APL:
	@echo "generating sphinx for APL"
	cd apl/; make html

clean:	
	cd apl/; make clean
	-rm -rvf *~	

sclean:
	cd apl/; make sclean
	cd individual/; make sclean

clean-all: clean 
	cd individual/; make clean
