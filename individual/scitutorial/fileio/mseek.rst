====
"mseek"
====

Scilab Function Last update : 01/04/2004
**mseek** - set current position in binary file.



Calling Sequence
~~~~~~~~~~~~~~~~

mseek(n [,fd, flag])




Parameters
~~~~~~~~~~


+ **n** :a positive scalar: The offset from origin in number of bytes.
+ **fd** : scalar. The **fd** parameter returned by the function
  **mopen** . -1 stands for last opened file. Default value is -1.
+ **flag** : a string. specifies the origin. Default value 'set'.




Description
~~~~~~~~~~~

The function **mseek()** sets the position of the next input or output
operation on the stream **fd** . The new position is at the signed
distance given by **n** bytes from the beginning, from the current
position, or from the end of the file, according to the **flag** value
which can be **'set'** , **'cur'** or **'end'** .

**mseek()** allows the file position indicator to be set beyond the
end of the existing data in the file. If data is later written at this
point, subsequent reads of data in the gap will return zero until data
is actually written into the gap. **mseek()** , by itself, does not
extend the size of the file.



Examples
~~~~~~~~


::

    
    
    file3='test3.bin'
    fd1= mopen(file3,'wb');
    for i=1:10, mput(i,'d'); end 
    mseek(0);
    mput(678,'d');
    mseek(0,fd1,'end');
    mput(932,'d');
    mclose(fd1)
    fd1= mopen(file3,'rb');
    res=mget(11,'d')
    res1=[1:11]; res1(1)=678;res1($)=932;
    if res1<>res ;write(%io(2),'Bug');end;
    mseek(0,fd1,'set');
    // trying to read more than stored data 
    res1=mget(100,'d',fd1);
    if res1<>res ;write(%io(2),'Bug');end;
    meof(fd1)
    mclearerr(fd1)
    mclose(fd1);
     
      




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


