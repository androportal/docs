====
"loadmatfile"
====

Scilab Function Last update : 09/03/2005
**loadmatfile** - loads a Matlab V6 MAT-file (binary or ASCII) into
Scilab



Calling Sequence
~~~~~~~~~~~~~~~~

loadmatfile(format,filename[,var1[,var2[,...]]])
loadmatfile(filename[,format[,var1[,var2[,...]]]])
loadmatfile(filename[,var1[,var2,[,...[,format]]]])




Parameters
~~~~~~~~~~


+ **filename** : character string containing the path of the file
  (needed)
+ **format** : file format (if not given and file has extension
  ".mat", file is considered to be binary)

    + **"-mat"** : binary file
    + **"-ascii"** : option to force Scilab to read file as an ASCII file

+ **var1, var2** : character strings containing the name of the
  variables to load (only for binary files)




Description
~~~~~~~~~~~

loads a Matlab MAT-file into Scilab. The Matlab data types are
converted into the Scilab equivalents.



See Also
~~~~~~~~

` **load** `_,` **savematfile** `_,` **save** `_,` **mfile2sci** `_,`
**matfile2sci** `_,



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
      : ://./fileio/../translation/mfile2sci.htm
.. _
      : ://./fileio/matfile2sci.htm
.. _
      : ://./fileio/savematfile.htm
.. _
      : ://./fileio/save.htm


