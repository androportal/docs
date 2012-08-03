====
"mgetl"
====

Scilab Function Last update : April 2000
**mgetl** - read lines from an ascii file



Calling Sequence
~~~~~~~~~~~~~~~~

txt=mgetl(file_desc [,m])




Parameters
~~~~~~~~~~


+ **file_desc** :a character string giving the file name or a logical
  unit returned by mopen
+ **m** : an integer scalar. Default value is -1.
+ **txt** : a column vector of string




Description
~~~~~~~~~~~

**mgetl** function allows to read a lines from an ascii file.

If **m** is omitted or is **-1** all lines till end of file occurs are
read.

If **m** is given **mgetl** tries to read exactly m lines. This option
is useful to sequentialy read part of a file. In this case if an end
of file (EOF) occurs before **m** lines are read the read lines are
returned (it is possible to check if EOF had occured using the meof
function) issued.

**mgetl** allows to read files coming from Unix, Windows, or Mac
operating systems.



Examples
~~~~~~~~


::

    
    
    mgetl('SCI/scilab.star',5)
    
    mgetl SCI/macros/elem/erf.sci
    
    fd=mopen('SCI/scilab.star','r')
    mgetl(fd,10)
    mclose(fd)
     
      




See Also
~~~~~~~~

` **mputl** `_,` **mclose** `_,` **mfscanf** `_,` **mget** `_,`
**mgetstr** `_,` **mopen** `_,` **read** `_,



Author
~~~~~~

S. Steer

.. _
      : ://./fileio/mgetstr.htm
.. _
      : ://./fileio/read.htm
.. _
      : ://./fileio/mopen.htm
.. _
      : ://./fileio/mputl.htm
.. _
      : ://./fileio/mfscanf.htm
.. _
      : ://./fileio/mclose.htm
.. _
      : ://./fileio/mget.htm


