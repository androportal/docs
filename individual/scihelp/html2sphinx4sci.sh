#!/bin/bash 
# htm2sphinx.sh
# --------------------
# THIS FILE IS FOR SCILAB DOCS ONLY !!
# --------------------
# --------------------
# -bash sript which helps to converts html pages to rst (sphinx) format
# recursively, including index.rst
# -requires `html2rest`
# --------------------

function convert() {
    # ----
    # wil convert html to rst using `html2rest
    # <http://pypi.python.org/pypi/html2rest/>`_
    # ----
    FILE=$(find -type f -iname "*.html")
    # echo $FILE
    
    for f in ${FILE[@]}
    do
        # echo $f
	RST=$(echo $f | sed 's/.html/.rst/g')
        # echo $RST
	html2rest $f > $RST
    done
}


function reSt() {
    FILE=$(find -type f -iname "*.rst")
    for f in ${FILE[@]}
    do
	sed -i 's$://./$$g' $f
    done

}

# _init__
convert
reSt


# NOTE:
# -------------------------------------------------------------------
# All the docs are converted by first converting a CHM file to .html
# pages using ``extract_chmLib``. See its man page for more details.
# command was::

# extract_chmLib manual_scilab-5.4.0-beta-2_en_US.chm html/

# Once all the .html files are created in html/ dir. run *this* script
# to convert all .html pages to respective .rst files + this script
# also does the linking job. 
