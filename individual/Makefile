# Makefile for individual

all: c cpp py sci

c:
	@echo "generating sphinx for c"
	cd ctutor/; make html

cpp:
	@echo "generating sphinx for cpp"	
	cd cptutorial/; make html

py:
	@echo "generating sphinx for python"	
	cd python/; make html

sci:
	@echo "generating sphinx for scilab"		
	cd scitutorial/; make html

clean:
	@echo "cleaning up ..."
	@echo 
	cd ctutor/; make clean
	cd cptutorial/; make clean
	cd python/; make clean
	cd scitutorial/; make clean
	-rm -rvf *~