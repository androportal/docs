====
"write"
====

Scilab Function Last update : April 1993
**write** - write in a formatted file



Calling Sequence
~~~~~~~~~~~~~~~~

write(file-desc,a,[format])
write(file-desc,a,k,format)




Parameters
~~~~~~~~~~


+ **file-desc** : character string specifying the file name or integer
  value specifying logical unit (see file).
+ **a** : real matrix or column vector of character strings.
+ **format** : character string, specifies a "Fortran" format. This
  character string must begin with a right parenthesis and end with a
  left parenthesis. Formats cannot mix floating point , integer or
  character edition modes
+ **k** : integer vector




Description
~~~~~~~~~~~

writes row-by-row a real matrix or a column vector of character
strings in a formatted file. Each row of the **a** argument begin in a
new line of **file-desc** file. Depending on **format** a given row of
the **a** argument may be written in more than one line of **file-
desc** file.

Format examples : **(1x,e10.3,5x,3(f3.0))** , **(10x,a20)** ;

See a Fortran book for more precision.

Direct access files : **x=write(file_desc,a,k,format)** . Here **k**
is the vector of records (one record by row, i.e. **m=prod(size(k)** )

**write(%io(2),....)** writes on Scilab's window. Note that in this
case **format** should produce one output line per matrix row. If this
contraint is not verified unpredictable behavior could happen.



Examples
~~~~~~~~


::

    
    
    if MSDOS then unix('del asave');
    else unix('rm -f asave'); end
    A=rand(5,3); write('asave',A); A=read('asave',5,3);
    write(%io(2),A,'('' | '',3(f10.3,'' | ''))')
    write(%io(2),string(1:10))
    write(%io(2),strcat(string(1:10),','))
    write(%io(2),1:10,'(10(i2,3x))')
    
    if MSDOS then unix('del foo');
    else unix('rm -f foo'); end
    write('foo',A)
     
      




See Also
~~~~~~~~

` **file** `_,` **fileinfo** `_,` **writb** `_,` **read** `_,`
**print** `_,` **string** `_,` **mfprintf** `_,` **mprintf** `_,`
**msprintf** `_,` **fprintfMat** `_,

.. _
      : ://./fileio/fileinfo.htm
.. _
      : ://./fileio/fprintfMat.htm
.. _
      : ://./fileio/print.htm
.. _
      : ://./fileio/writb.htm
.. _
      : ://./fileio/mprintf.htm
.. _
      : ://./fileio/file.htm
.. _
      : ://./fileio/read.htm
.. _
      : ://./fileio/../strings/string.htm


