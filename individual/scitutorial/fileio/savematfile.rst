====
"savematfile"
====

Scilab Function Last update : 28/10/2004
**savematfile** - write a Matlab MAT-file (binary or ASCII)



Calling Sequence
~~~~~~~~~~~~~~~~

savematfile('filename')
savematfile('filename', 'var1', 'var2', ...)
savematfile('filename', '-struct', 's')
savematfile('filename', '-struct', 's', 'f1', 'f2', ...)
savematfile(..., 'format')
savematfile filename var1 var2 ...




Parameters
~~~~~~~~~~


+ **filename** : character string containing the path of the file
  (needed)
+ **format** : data format to use

    + **"-mat"** : binary MAT-file (default)
    + **"-ascii"** : 8-bit ASCII format
    + **"-ascii" "-double"** : 16-bit ASCII format
    + **"-ascii" "-tabs"** : delimits with tabs
    + **"-ascii" "-double" "-tabs"** : 16-digit ASCII format, tab
      delimited
    + **"-v4"** : A format that MATLAB Version 4 can open
    + **"-v6"** : A format that MATLAB Version 6 and earlier can open
      (default)

+ **var1, var2** : character strings containing the name of the
  variables to load (only for binary files)
+ **"-struct" "s"** : saves all fields of the scalar structure s as
  individual variables within the file filename.
+ **"-struct" "s" "f1" "f2"** : saves as individual variables only
  those structure fields specified (s.f1, s.f2, ...).




Description
~~~~~~~~~~~

saves variables in a Matlab MAT-file from Scilab. The Scilab data
types are converted into the Matlab equivalents.



See Also
~~~~~~~~

` **load** `_,` **save** `_,` **loadmatfile** `_,` **mfile2sci** `_,



Authors
~~~~~~~

****Serge Steer (INRIA)
****V.C




Bibliography
~~~~~~~~~~~~

This function has been developped following the "MAT-File Format"
description: **www.mathworks.com/access/helpdesk/help/pdf_doc/matlab/m
atfile_format.pdf**

.. _
      : ://./fileio/load.htm
.. _
      : ://./fileio/loadmatfile.htm
.. _
      : ://./fileio/../translation/mfile2sci.htm
.. _
      : ://./fileio/save.htm


