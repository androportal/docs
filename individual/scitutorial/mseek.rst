


mseek
=====

set current position in binary file.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    mseek(n [,fd, flag])




Arguments
~~~~~~~~~

:n a positive scalar: The offset from origin in number of bytes.
: :fd scalar. The `fd` parameter returned by the function `mopen`. -1
  stands for last opened file. Default value is -1.
: :flag a string. specifies the origin. Default value 'set'.
:



Description
~~~~~~~~~~~

The function `mseek()` sets the position of the next input or output
operation on the stream `fd`. The new position is at the signed
distance given by `n` bytes from the beginning, from the current
position, or from the end of the file, according to the `flag` value
which can be `'set'`, `'cur'` or `'end'`.

`mseek()` allows the file position indicator to be set beyond the end
of the existing data in the file. If data is later written at this
point, subsequent reads of data in the gap will return zero until data
is actually written into the gap. `mseek()`, by itself, does not
extend the size of the file.



Examples
~~~~~~~~


::

    file3='test3.bin'
    fd1= `mopen`_(file3,'wb');
    for i=1:10, `mput`_(i,'d'); end 
    mseek(0);
    `mput`_(678,'d');
    mseek(0,fd1,'end');
    `mput`_(932,'d');
    `mclose`_(fd1)
    fd1= `mopen`_(file3,'rb');
    res=`mget`_(11,'d')
    res1=[1:11]; res1(1)=678;res1($)=932;
    if res1<>res ;`write`_(%io(2),'Bug');end;
    mseek(0,fd1,'set');
    
    // trying to read more than stored data 
    res1=`mget`_(100,'d',fd1);
    if res1<>res ;`write`_(%io(2),'Bug');end;
    `meof`_(fd1)
    `mclearerr`_(fd1)
    `mclose`_(fd1);




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
+ `mgetstr`_ reads a character string from a file
+ `mopen`_ open a file in Scilab
+ `mprintf`_ converts, formats, and writes data to the main scilab
  window
+ `mput`_ writes byte or word in a given binary format
+ `mputstr`_ write a character string in a file
+ `mscanf`_
+ `mseek`_ set current position in binary file.
+ `mtell`_ binary file management
+ `mdelete`_ deletes file(s)


.. _mfscanf: mfscanf.html
.. _meof: meof.html
.. _mput: mput.html
.. _mget: mget.html
.. _fscanfMat: fscanfMat.html
.. _mprintf: mprintf.html
.. _mdelete: mdelete.html
.. _mclose: mclose.html
.. _mgetstr: mgetstr.html
.. _mfprintf: mfprintf.html
.. _mscanf: mfscanf.html#mscanf
.. _mopen: mopen.html
.. _mseek: mseek.html
.. _mtell: mtell.html
.. _mputstr: mputstr.html
.. _fprintfMat: fprintfMat.html


