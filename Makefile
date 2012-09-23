# Make file for APL docs

# target is not a real file
.PHONY: help all c cpp py sci devel clean sclean clean-all

help:
	@echo "current make version is: "$(MAKE_VERSION)
	@echo "Please use \`make <target>' where <target> is one of"
	@echo ""
	@echo "all		to make all documentation and developer manual at once"
	@echo "c		to make C help files"
	@echo "cpp		to make C++ help files"
	@echo "py		to make Python help files"
	@echo "sci		to make Scilab help files"
	@echo "devel		to make Developers manual for Aakash Programming Lab"
	@echo "clean		to clean \`devel\` and backup files"
	@echo "sclean		to remove source files from \`../build/html/_source\` (just to save some space)"
	@echo "clean-all	to clean all \`_build/\`"

all: c cpp py sci devel

c:
	@echo "generating C help"
	cd individual/; make c

cpp:
	@echo "generating C++ help"
	cd individual/; make cpp

py:
	@echo "generating Python help"
	cd individual/; make py

sci:
	@echo "generating Scilab help"
	cd individual/; make sci

devel:
	@echo "generating developer manual"
	cd devel/; make html

clean:	
	@echo "cleaning root... type \`make clean-all\` to clean entire \`docs\`"
	cd devel/; make clean
	-rm -rvf *~	

sclean:
	@echo "cleaning souce files..."
	cd devel/; make sclean
	cd individual/; make sclean

clean-all: clean 
	@echo "cleaning up..."
	cd individual/; make clean
