


isdir
=====

checks if argument is a directory path



Calling Sequence
~~~~~~~~~~~~~~~~


::

    r=isdir(path)




Arguments
~~~~~~~~~

:path a character string or a matrix of strings: a directory pathname.
: :r a boolean: `%t` if `path` is a path to a directory.
:



Description
~~~~~~~~~~~

`r=isdir(path)` checks if `path` is a path to a directory.



Reference
~~~~~~~~~

This function is based on the C function `stat` .The `SCI` and `~`
shortcuts for Scilab directory and home directory are handled.



Examples
~~~~~~~~


::

    isdir(TMPDIR)
    isdir SCI/etc/scilab.start




See Also
~~~~~~~~


+ `isfile`_ checks whether argument is an existing file


