====
"matfile2sci"
====

Scilab Function Last update : 28/10/2004
**matfile2sci** - converts a Matlab 5 MAT-file into a Scilab binary
file



Calling Sequence
~~~~~~~~~~~~~~~~

matfile2sci(mat_file_path,sci_file_path)




Parameters
~~~~~~~~~~


+ **mat_file_path** : character string containing the path of the
  Matlab input file
+ **sci_file_path** : character string containing the path of the
  Scilab output file




Description
~~~~~~~~~~~

Converts a Matlab 5 MAT-file into a Scilab binary file compatible with
the function **load** The Matlab data types are converted into the
Scilab equivalents.



See Also
~~~~~~~~

` **loadmatfile** `_,` **load** `_,` **mfile2sci** `_,



Author
~~~~~~

Serge Steer (INRIA)



Bibliography
~~~~~~~~~~~~

This function has been developped according to the document "MAT-File
Format": ` matfile_format.pdf`_

.. _
      : ://./fileio/load.htm
.. _
      : ://./fileio/loadmatfile.htm
.. _
      : ://./fileio/../translation/mfile2sci.htm
.. _ matfile_format.pdf: ://./fileio/www.mathworks.com/access/helpdesk/help/pdf_doc/matlab/matfile_format.pdf


