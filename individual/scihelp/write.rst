


write
=====

write in a formatted file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    write(file-desc,a,[format])
    write(file-desc,a,k,format)




Arguments
~~~~~~~~~

:file-desc character string specifying the file name or integer value
  specifying logical unit (see file). This function can not open a UTF
  filename. In this case, please uses mopen.
: :a real matrix or column vector of character strings.
: :format character string, specifies a "Fortran" format. This
  character string must begin with a right parenthesis and end with a
  left parenthesis. Formats cannot mix floating point , integer or
  character edition modes
: :k integer vector
:



Description
~~~~~~~~~~~

writes row-by-row a real matrix or a column vector of character
strings in a formatted file. Each row of the `a` argument begin in a
new line of `file-desc` file. Depending on `format` a given row of the
`a` argument may be written in more than one line of `file-desc` file.

Format examples : `(1x,e10.3,5x,3(f3.0))` , `(10x,a20)` ;

See a Fortran book for more precision.

Direct access files : `x=write(file_desc,a,k,format)`. Here `k` is the
vector of records (one record by row, i.e. `m=prod(size(k)`)

`write(%io(2),....)` writes on Scilab's window. Note that in this case
`format` should produce one output line per matrix row. If this
contraint is not verified unpredictable behavior could happen.



Examples
~~~~~~~~


::

    if `getos`_() == 'Windows' then `unix`_('del asave');
    else `unix`_('rm -f asave'); end
    A=`rand`_(5,3); write('asave',A); A=`read`_('asave',5,3);
    write(%io(2),A,'('' | '',3(f10.3,'' | ''))')
    write(%io(2),`string`_(1:10))
    write(%io(2),`strcat`_(`string`_(1:10),','))
    write(%io(2),1:10,'(10(i2,3x))')
    
    if `getos`_() == 'Windows' then `unix`_('del foo');
    else `unix`_('rm -f foo'); end
    write('foo',A)




See Also
~~~~~~~~


+ `read`_ matrices read
+ `save`_ Save a variable or a serie of variables in a binary file
+ `file`_ file management
+ `fileinfo`_ provides information about a file
+ `writb`_ fortran file binary write
+ `print`_ prints variables in a file
+ `string`_ conversion to string
+ `mfprintf`_ converts, formats, and writes data to a file
+ `mprintf`_ converts, formats, and writes data to the main scilab
  window
+ `msprintf`_ converts, formats, and writes data in a string
+ `fprintfMat`_ writes a matrix in a file


.. _print: print.html
.. _fileinfo: fileinfo.html
.. _mprintf: mprintf.html
.. _read: read.html
.. _string: string.html
.. _mfprintf: mfprintf.html
.. _msprintf: msprintf.html
.. _writb: writb.html
.. _save: save.html
.. _file: file.html
.. _fprintfMat: fprintfMat.html


