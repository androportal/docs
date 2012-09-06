


%io
===

a variable, which keeps standard input and standard output (file
descriptor)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    %io(1)
    %io(2)




Description
~~~~~~~~~~~

`%io(1)` returns standard input (file descriptor 5).

`%io(2)` returns standard output (file descriptor 6).

File descriptor 0 is the standard error.



Examples
~~~~~~~~


::

    `mfprintf`_(%io(2),'Scilab stdout (C)');
    `mfprintf`_(0,'Scilab stderr (C)');
    `write`_(%io(2),'Scilab stdout (Fortran)');
    `write`_(0,'Scilab stderr (Fortran)');
    [units,typ,names]=`file`_()




See Also
~~~~~~~~


+ `write`_ write in a formatted file
+ `mfprintf`_ converts, formats, and writes data to a file
+ `file`_ file management
+ `dispfiles`_ displays opened files properties


.. _write: write.html
.. _mfprintf: mfprintf.html
.. _dispfiles: dispfiles.html
.. _file: file.html


