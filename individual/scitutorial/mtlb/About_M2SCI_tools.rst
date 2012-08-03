====
"About_M2SCI_tools"
====

Documentation Last update : 05/10/2004
**About_M2SCI_tools** - Generally speaking about tools to convert
Matlab files to Scilab...



Description
~~~~~~~~~~~

Scilab 3.0 includes a new version of useful tools to convert Matlab
M-files to Scilab.

Taking a Matlab M-file, **mfile2sci** modifies this files so that it
can be compiled by Scilab. After that this compiled code is converted
to a "tree" of instructions by **macr2tree** . This "tree" is an
imbrication of Scilab lists and tlists and is the basis for
conversion. Each instruction of this "tree" is converted to Scilab and
inference is done to known what are the variables. Once this "tree" is
converted to Scilab, code is generated using **tree2code** .

All tlists used for coding this tree (and we call "MSCI tlists") are
listed below:

****
