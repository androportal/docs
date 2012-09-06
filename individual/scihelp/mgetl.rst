


mgetl
=====

reads lines from an text file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    txt = mgetl(file_desc [,m])




Arguments
~~~~~~~~~

:file_desc a character string giving the file name or a logical unit
  returned by `mopen`.
: :m an integer scalar: a number of lines to read. Default value is
  -1.
: :txt a column vector of strings.
:



Description
~~~~~~~~~~~

`mgetl` function allows to read a lines from an text file.

If `m` is omitted or is `-1` all lines till end of file occurs are
read.

If `m` is given `mgetl` tries to read exactly `m` lines. This option
is useful to sequentialy read part of a file. In this case if an end
of file (EOF) occurs before `m` lines are read the read lines are
returned (it is possible to check if EOF had occurred using the `meof`
function) issued.

`mgetl` allows to read files coming from Unix, Windows or Mac
operating systems.

`mgetl` supports only UTF-8 and ANSI file encoding.



Examples
~~~~~~~~


::

    mgetl('SCI/etc/scilab.start',5)
    
    mgetl SCI/modules/elementary_functions/macros/erf.sci
    
    fd=`mopen`_('SCI/etc/scilab.start','r')
    mgetl(fd,10)
    `mclose`_(fd)




See Also
~~~~~~~~


+ `mputl`_ writes strings in an ascii file
+ `mclose`_ closes an opened file
+ `mfscanf`_ reads input from the stream pointer stream (interface to
  the C fscanf function)
+ `mget`_ reads byte or word in a given binary format and converts to
  a double type
+ `mput`_ writes byte or word in a given binary format
+ `mgetstr`_ reads a character string from a file
+ `mopen`_ open a file in Scilab
+ `read`_ matrices read


.. _mfscanf: mfscanf.html
.. _mput: mput.html
.. _mget: mget.html
.. _read: read.html
.. _mclose: mclose.html
.. _mgetstr: mgetstr.html
.. _mopen: mopen.html
.. _mputl: mputl.html


