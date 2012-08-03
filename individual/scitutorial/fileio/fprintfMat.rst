====
"fprintfMat"
====

Scilab Function Last update : 01/04/2004
**fprintfMat** - print a matrix in a file.



Calling Sequence
~~~~~~~~~~~~~~~~

fprintfMat(fil,M [,format,text])




Parameters
~~~~~~~~~~


+ **fil** : a string, the pathname of the file to be scanned.
+ **M** : A matrix of real numbers.
+ **format** : a character string, a C like format. This is an
  optional parameter, the default value is **"%f"**
+ **text** : a string matrix giving non numerical comments stored at
  the beginning of the file.




Description
~~~~~~~~~~~

The **fprintfMat** function prints a matrix in a formated file. Each
row of the matrix give a line in the file. If **text** is given then
the elements of **text** are inserted columnwise at the beginning of
the file one element per line.



Examples
~~~~~~~~


::

    
    
    n=50;
    a=rand(n,n,'u');
    fprintfMat(TMPDIR+'/Mat',a,'%5.2f');
    a1=fscanfMat(TMPDIR+'/Mat');
     
      




See Also
~~~~~~~~

` **mclose** `_,` **meof** `_,` **mfprintf** `_,` **mfscanf** `_,`
**fscanfMat** `_,` **mget** `_,` **mgetstr** `_,` **mopen** `_,`
**mprintf** `_,` **mput** `_,` **mputstr** `_,` **mscanf** `_,`
**mseek** `_,` **mtell** `_,` **mdelete** `_,

.. _
      : ://./fileio/meof.htm
.. _
      : ://./fileio/mseek.htm
.. _
      : ://./fileio/mputstr.htm
.. _
      : ://./fileio/mgetstr.htm
.. _
      : ://./fileio/mopen.htm
.. _
      : ://./fileio/mprintf.htm
.. _
      : ://./fileio/mfscanf.htm
.. _
      : ://./fileio/mtell.htm
.. _
      : ://./fileio/mclose.htm
.. _
      : ://./fileio/fscanfMat.htm
.. _
      : ://./fileio/mget.htm
.. _
      : ://./fileio/mdelete.htm
.. _
      : ://./fileio/mput.htm


