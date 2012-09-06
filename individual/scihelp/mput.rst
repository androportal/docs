


mput
====

writes byte or word in a given binary format



Calling Sequence
~~~~~~~~~~~~~~~~


::

    mput(x [,type,fd])




Arguments
~~~~~~~~~

:x a vector of floating point or integer type numbers
: :fd scalar. The `fd` parameter returned by the function. Default
  value is -1 which stands for the last ( `mopen`) opened file.
: :type a string. Give the binary format used to write all the entries
  of x.
:



Description
~~~~~~~~~~~

The `mput` function writes data to the output specified by the stream
parameter `fd`. Data is written at the position at which the file
pointer is currently pointing and advances the indicator
appropriately.

The `type` parameter is a conversion specifier which may be set to any
of the following flag characters (with default value "l"):

:"l","i","s","ul","ui","us","d","f","c","uc" for writing respectively
  a long, an int, a short, an unsigned long, an unsigned int, an
  unsigned short, a double, a float, a char and an unsigned char. The
  bytes which are wrote are automatically swapped if necessary (by
  checking little-endian status) in order to produce machine independent
  binary files ( in little-endian mode). This default swapping mode can
  be suppressed by adding a flag in the `mopen` function.
: :"..l" or "..b" It is also possible to write in little-endian or
  big-endian mode by adding a 'l' or 'b' character at the end of a type
  specification. For example "db" will write a double in big-endian
  mode.
:



Examples
~~~~~~~~


::

    filen = 'test.bin';
    `mopen`_(filen,'wb');
    mput(1996,'l');mput(1996,'i');mput(1996,'s');mput(98,'c');
    
    // force little-endian 
    mput(1996,'ll');mput(1996,'il');mput(1996,'sl');mput(98,'cl');
    
    // force big-endian 
    mput(1996,'lb');mput(1996,'ib');mput(1996,'sb');mput(98,'cb');
    
    `mclose`_();
    `mopen`_(filen,'rb');
    if 1996<>`mget`_(1,'l') then pause,end
    if 1996<>`mget`_(1,'i') then pause,end
    if 1996<>`mget`_(1,'s') then pause,end
    if   98<>`mget`_(1,'c') then pause,end
    
    // force little-endian
    if 1996<>`mget`_(1,'ll') then pause,end
    if 1996<>`mget`_(1,'il') then pause,end
    if 1996<>`mget`_(1,'sl') then pause,end
    if   98<>`mget`_(1,'cl') then pause,end
    
    // force big-endian 
    if 1996<>`mget`_(1,'lb') then pause,end
    if 1996<>`mget`_(1,'ib') then pause,end
    if 1996<>`mget`_(1,'sb') then pause,end
    if   98<>`mget`_(1,'cb') then pause,end
    
    `mclose`_();




See Also
~~~~~~~~


+ `mclose`_ closes an opened file
+ `meof`_ check if end of file has been reached
+ `mfprintf`_ converts, formats, and writes data to a file
+ `fprintfMat`_ writes a matrix in a file
+ `mfscanf`_ reads input from the stream pointer stream (interface to
  the C fscanf function)
+ `fscanfMat`_ reads a matrix from a text file
+ `mget`_ reads byte or word in a given binary format and converts to
  a double type
+ `mgetl`_ reads lines from an text file
+ `mgetstr`_ reads a character string from a file
+ `mopen`_ open a file in Scilab
+ `mprintf`_ converts, formats, and writes data to the main scilab
  window
+ `mputl`_ writes strings in an ascii file
+ `mputstr`_ write a character string in a file
+ `mscanf`_
+ `mseek`_ set current position in binary file.
+ `mtell`_ binary file management
+ `mdelete`_ deletes file(s)


.. _mfscanf: mfscanf.html
.. _meof: meof.html
.. _mget: mget.html
.. _fscanfMat: fscanfMat.html
.. _mprintf: mprintf.html
.. _mputl: mputl.html
.. _mdelete: mdelete.html
.. _mclose: mclose.html
.. _mgetstr: mgetstr.html
.. _mfprintf: mfprintf.html
.. _mscanf: mfscanf.html#mscanf
.. _mopen: mopen.html
.. _mseek: mseek.html
.. _mtell: mtell.html
.. _mgetl: mgetl.html
.. _mputstr: mputstr.html
.. _fprintfMat: fprintfMat.html


