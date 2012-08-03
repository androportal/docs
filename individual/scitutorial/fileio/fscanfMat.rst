====
"fscanfMat"
====

Scilab Function Last update : 01/04/2004
**fscanfMat** - Reads a Matrix from a text file.



Calling Sequence
~~~~~~~~~~~~~~~~

M=fscanfMat(filename);
[M,text]=fscanfMat(filename);




Parameters
~~~~~~~~~~


+ **filename** : a character string giving the name of the file to be
  scanned.
+ **M** : Output variable. A matrix of real numbers.
+ **text** : Output variable. A string matrix.




Description
~~~~~~~~~~~

The **fscanfMat** function is used to read a scalar matrix from a text
file. The first non-numeric lines of the file are returned in **text**
if requested and all the remaining lines must have the same number of
columns (column separator are assumed to be white spaces or tab
characters). The number of columns of the matrix will follow the
number of columns found in the file and the number of lines is fetched
by detecting eof in the input file. This function can be used to read
back numerical data saved with the **fprintfMat** .



Examples
~~~~~~~~


::

    
    
    fd=mopen(TMPDIR+'/Mat','w');
    mfprintf(fd,'Some text.....\n');
    mfprintf(fd,'Some text again\n');
    a=rand(6,6);
    for i=1:6 ,
     for j=1:6, mfprintf(fd,'%5.2f ',a(i,j));end;
     mfprintf(fd,'\n'); 
    end
    mclose(fd);
    a1=fscanfMat(TMPDIR+'/Mat')
     
      




See Also
~~~~~~~~

` **mclose** `_,` **meof** `_,` **mfprintf** `_,` **fprintfMat** `_,`
**mfscanf** `_,` **fscanfMat** `_,` **mget** `_,` **mgetstr** `_,`
**mopen** `_,` **mprintf** `_,` **mput** `_,` **mputstr** `_,`
**mscanf** `_,` **mseek** `_,` **mtell** `_,` **mdelete** `_,

.. _
      : ://./fileio/meof.htm
.. _
      : ://./fileio/mseek.htm
.. _
      : ://./fileio/mputstr.htm
.. _
      : ://./fileio/fprintfMat.htm
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


