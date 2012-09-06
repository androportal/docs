


savematfile
===========

write a Matlab MAT-file (binary or ASCII)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    savematfile('filename')
    savematfile('filename', 'var1', 'var2', ...)
    savematfile('filename', '-struct', 's')
    savematfile('filename', '-struct', 's', 'f1', 'f2', ...)
    savematfile(..., '-v4')
    savematfile(..., '-v6')
    savematfile(..., '-v7')
    savematfile(..., '-v7.3')
    savematfile filename var1 var2 ...




Arguments
~~~~~~~~~

:filename character string containing the path of the file (needed)
: :format data format to use
    :"-mat" binary MAT-file (default)
    : :"-ascii" 8-bit ASCII format
    : :"-ascii" "-double" 16-bit ASCII format
    : :"-ascii" "-tabs" delimits with tabs
    : :"-ascii" "-double" "-tabs" 16-digit ASCII format, tab delimited
    : :"-v4" A format that MATLAB Version 4 can open
    : :"-v6" A format that MATLAB Version 6 and earlier can open
    : :"-v7" A format that MATLAB Version 7 and earlier can open (default)
    : :"-v7.3" A format that MATLAB Version 7.3 and earlier can open
    :

: :var1, var2 character strings containing the name of the variables
  to load (only for binary files)
: :"-struct" "s" saves all fields of the scalar structure s as
  individual variables within the file filename.
: :"-struct" "s" "f1" "f2" saves as individual variables only those
  structure fields specified (s.f1, s.f2, ...).
:



Description
~~~~~~~~~~~

saves variables in a Matlab MAT-file from Scilab. The Scilab data
types are converted into the Matlab equivalents.



Examples
~~~~~~~~


::

    A = `rand`_(10,10);
    B = `sprand`_(100,100,0.1);
    savematfile('test_matfile.mat','A','B','-v6');
    clear;
    `loadmatfile`_('test_matfile.mat');
    `disp`_(A)
    `disp`_(B)




See Also
~~~~~~~~


+ `load`_ Load a saved variable or a serie of variables
+ `save`_ Save a variable or a serie of variables in a binary file
+ `loadmatfile`_ loads a Matlab V6 MAT-file (binary or ASCII) into
  Scilab
+ `mfile2sci`_ Matlab M-file to Scilab conversion function




Bibliography
~~~~~~~~~~~~

This function has been developed following the "MAT-File Format"
description: ``Mat-File Format`_`

.. _mfile2sci: mfile2sci.html
.. _load: load.html
.. _Mat-File Format: http://www.mathworks.com/access/helpdesk/help/pdf_doc/matlab/matfile_format.pdf
.. _save: save.html
.. _loadmatfile: loadmatfile.html


