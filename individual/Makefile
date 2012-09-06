# Makefile for individual

# common vars
C	=	chelp
CPP	= 	cphelp
PY	=	pyhelp
SCI	=	scihelp

# phony targets
.PHONY:	c cpp py sci sclean clean 

all: c cpp py sci

c:
	@echo "generating sphinx for c"
	cd $(C)/; make html

cpp:
	@echo "generating sphinx for cpp"	
	cd $(CPP)/; make html

py:
	@echo "generating sphinx for python"	
	cd $(PY)/; make html

sci:
	@echo "generating sphinx for scilab"		
	cd $(SCI)/; make html

sclean:
	@echo "cleaning source ..."
	cd $(C)/; make sclean
	cd $(CPP)/; make sclean
	cd $(PY)/; make sclean
	cd $(SCI)/; make sclean

clean:
	@echo "cleaning up ..."
	@echo 
	cd $(C)/; make clean
	cd $(CPP)/; make clean
	cd $(PY)/; make clean
	cd $(SCI)/; make clean
	-rm -rvf *~

