====
"mput"
====

Scilab Function Last update : 01/04/2004
**mput** - writes byte or word in a given binary format



Calling Sequence
~~~~~~~~~~~~~~~~

mput(x [,type,fd])




Parameters
~~~~~~~~~~


+ **x** : a vector of floating point or integer type numbers
+ **fd** : scalar. The **fd** parameter returned by the function.
  Default value is -1 which stands for the last ( **mopen** ) opened
  file.
+ **type** : a string. Give the binary format used to write all the
  entries of x.




Description
~~~~~~~~~~~

The **mput** function writes data to the output specified by the
stream parameter **fd** . Data is written at the position at which the
file pointer is currently pointing and advances the indicator
appropriately.

The **type** parameter is a conversion specifier which may be set to
any of the following flag characters (with default value "l"):

**"l","i","s","ul","ui","us","d","f","c","uc"**: for writing
  respectively a long, an int, a short, an unsigned long, an unsigned
  int, an unsigned short, a double, a float, a char and an unsigned
  char. The bytes which are wrote are automatically swapped if necessary
  (by checking little-endian status) in order to produce machine
  independent binary files ( in little-endian mode). This default
  swapping mode can be suppressed by adding a flag in the **mopen**
  function.
**"..l" or "..b"**: It is also possible to write in little-endian or
  big-endian mode by adding a 'l' or 'b' character at the end of a type
  specification. For example "db" will write a double in big-endian
  mode.




Examples
~~~~~~~~


::

    
    
      filen = 'test.bin';
      mopen(filen,'wb');
      mput(1996,'l');mput(1996,'i');mput(1996,'s');mput(98,'c');
    // force little-endian 
      mput(1996,'ll');mput(1996,'il');mput(1996,'sl');mput(98,'cl');
    // force big-endian 
      mput(1996,'lb');mput(1996,'ib');mput(1996,'sb');mput(98,'cb');
    //
      mclose();
      mopen(filen,'rb');
      if 1996<>mget(1,'l') then pause,end
      if 1996<>mget(1,'i') then pause,end
      if 1996<>mget(1,'s') then pause,end
      if   98<>mget(1,'c') then pause,end
      // force little-endian
      if 1996<>mget(1,'ll') then pause,end
      if 1996<>mget(1,'il') then pause,end
      if 1996<>mget(1,'sl') then pause,end
      if   98<>mget(1,'cl') then pause,end
      // force big-endian 
      if 1996<>mget(1,'lb') then pause,end
      if 1996<>mget(1,'ib') then pause,end
      if 1996<>mget(1,'sb') then pause,end
      if   98<>mget(1,'cb') then pause,end
      //
      mclose();
     
      




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


