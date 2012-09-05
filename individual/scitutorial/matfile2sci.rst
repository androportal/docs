


matfile2sci
===========

converts a Matlab 5 MAT-file into a Scilab binary file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    matfile2sci(mat_file_path,sci_file_path)




Arguments
~~~~~~~~~

:mat_file_path character string containing the path of the Matlab
  input file
: :sci_file_path character string containing the path of the Scilab
  output file
:



Description
~~~~~~~~~~~

Converts a Matlab 5 MAT-file into a SOD file compatible with the
function `load` (See `save`_ for more information). The Matlab data
types are converted into the Scilab equivalents.



See Also
~~~~~~~~


+ `loadmatfile`_ loads a Matlab V6 MAT-file (binary or ASCII) into
  Scilab
+ `load`_ Load a saved variable or a serie of variables
+ `save`_ Save a variable or a serie of variables in a binary file
+ `mfile2sci`_ Matlab M-file to Scilab conversion function




Bibliography
~~~~~~~~~~~~

This function has been developed according to the document "MAT-File
Format": `Mat-File Format`_



History
~~~~~~~
Version Description 5.4.0 Scilab output file in a SOD (Scilab Open
Data) file.
.. _mfile2sci: mfile2sci.html
.. _load: load.html
.. _Mat-File Format: http://www.mathworks.com/access/helpdesk/help/pdf_doc/matlab/matfile_format.pdf
.. _save: save.html
.. _loadmatfile: loadmatfile.html


