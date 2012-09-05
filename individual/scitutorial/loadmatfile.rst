


loadmatfile
===========

loads a Matlab V6 MAT-file (binary or ASCII) into Scilab



Calling Sequence
~~~~~~~~~~~~~~~~


::

    loadmatfile(format,filename[,var1[,var2[,...]]])
    loadmatfile(filename[,format[,var1[,var2[,...]]]])
    loadmatfile(filename[,var1[,var2,[,...[,format]]]])




Arguments
~~~~~~~~~

:filename character string containing the path of the file (needed)
: :format file format (if not given and file has extension ".mat",
file is considered to be binary)
    :"-mat" binary file
    : :"-ascii" option to force Scilab to read file as an ASCII file
    :

: :var1, var2 character strings containing the name of the variables
  to load (only for binary files)
:



Description
~~~~~~~~~~~

loads a Matlab MAT-file into Scilab. The Matlab data types are
converted into the Scilab equivalents.



Examples
~~~~~~~~


::

    A = `rand`_(10,10);
    B = `sprand`_(100,100,0.1);
    `savematfile`_('test_matfile.mat','A','B','-v6');
    clear;
    loadmatfile('test_matfile.mat');
    `disp`_(A)
    `disp`_(B)




See Also
~~~~~~~~


+ `load`_ Load a saved variable or a serie of variables
+ `savematfile`_ write a Matlab MAT-file (binary or ASCII)
+ `save`_ Save a variable or a serie of variables in a binary file
+ `mfile2sci`_ Matlab M-file to Scilab conversion function
+ `matfile2sci`_ converts a Matlab 5 MAT-file into a Scilab binary
  file




Bibliography
~~~~~~~~~~~~

This function has been developed following the "MAT-File Format"
description: ``Mat-File Format`_`

.. _matfile2sci: matfile2sci.html
.. _load: load.html
.. _Mat-File Format: http://www.mathworks.com/access/helpdesk/help/pdf_doc/matlab/matfile_format.pdf
.. _save: save.html
.. _mfile2sci: mfile2sci.html
.. _savematfile: savematfile.html


