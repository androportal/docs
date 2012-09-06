


mputl
=====

writes strings in an ascii file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    r = mputl(txt ,file_desc)




Arguments
~~~~~~~~~

:r returns %t or %f to check if function has correctly written on the
  file.
: :file_desc A character string giving the name of the file or a
  logical unit returned by mopen.
: :txt a vector of strings.
:



Description
~~~~~~~~~~~

`mputl` function allows to write a vector of strings as a sequence of
lines in an ascii file.



Examples
~~~~~~~~


::

    fd = `mopen`_(TMPDIR+'/text_mputl.txt','wt');
    mputl('Hello World',fd);
    `mclose`_(fd);
    
    mputl('Simple Hello World',TMPDIR+"/text_mputl_simple.txt");
    
    fd = `mopen`_(TMPDIR+'/text_mputl.txt','rt');
    `disp`_(`mgetl`_(fd));
    `mclose`_(fd);




See Also
~~~~~~~~


+ `mget`_ reads byte or word in a given binary format and converts to
  a double type
+ `mgetl`_ reads lines from an text file
+ `mclose`_ closes an opened file
+ `mfprintf`_ converts, formats, and writes data to a file
+ `mput`_ writes byte or word in a given binary format
+ `mputstr`_ write a character string in a file
+ `mopen`_ open a file in Scilab
+ `write`_ write in a formatted file


.. _write: write.html
.. _mget: mget.html
.. _mput: mput.html
.. _mgetl: mgetl.html
.. _mclose: mclose.html
.. _mfprintf: mfprintf.html
.. _mopen: mopen.html
.. _mputstr: mputstr.html


