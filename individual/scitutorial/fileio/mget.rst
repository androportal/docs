====
"mget"
====

Scilab Function Last update : 28/06/2006
**mget** - reads byte or word in a given binary format and convert to
double

**mgeti** - reads byte or word in a given binary format return an int
type



Calling Sequence
~~~~~~~~~~~~~~~~

x=mget([n,type,fd])
x=mgeti([n,type,fd])




Parameters
~~~~~~~~~~


+ **n** :a positive scalar: The number of items to be read.
+ **fd** : scalar. The **fd** parameter returned by the function
  **mopen** . -1 stands for last opened file. Default value is -1.
+ **type** : a string. Give the binary format used to write all the
  entries of x.
+ **x** : a vector of floating point or integer type numbers




Description
~~~~~~~~~~~

The **mget** function reads data in the input specified by the stream
parameter **fd** and returns a vector of floating point data. The
**mgeti** function reads data in the input specified by the stream
parameter **fd** and returns a vector of integer data.

Data is read at the position at which the file pointer is currently
pointing and advances the indicator appropriately.

The **type** parameter is a conversion specifier which may be set to
any of the following flag characters (with default value "l"):

**WARNING**, when reading binary files under Windows to not forget to
open the file with the **b** option like **fd1=mopen(file1,'rb')** if
not the file will be interpreted as text file and the bytes with value
**13** will be interpreted as newlines and ommitted.

**"l", "i", "s", "ul", "ui", "us", "d", "f", "c", "uc"**: for reading
  respectively a long, an int, a short, an unsigned long, an unsigned
  int, an unsigned short, a double, a float, a char and an unsigned
  char. The bytes which are read are automatically swapped if necessary
  (by checking little-endian status). This default swapping mode can be
  suppressed by adding a flag in the **mopen** function. Format "l", "d"
  and "f" are valid only with the **mget** function.
**"..l" or "..b"**: It is also possible to read in little-endian or
  big-endian mode by adding a 'l' or 'b' character at the end of a type
  specification. For example "db" will read a double in big-endian mode.




Examples
~~~~~~~~


::

    
        
        file1 = 'test1.bin';
        file2 = 'test2.bin';
        fd1=mopen(file1,'wb');
        fd2=mopen(file2,'wb');
        mput(1996,'ull',fd1);
        mput(1996,'ull',fd2);
        mclose(fd1);
        mclose(fd2);
    
        fd1=mopen(file1,'rb');
        if 1996<>mget(1,'ull',fd1) ;write(%io(2),'Bug');end;
        fd2=mopen(file2,'rb');
        if 1996<>mget(1,'ull',fd2) ;write(%io(2),'Bug');end;
        mclose(fd1);
        mclose(fd2);
        
      




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


