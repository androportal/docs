


isfile
======

checks whether argument is an existing file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    x = isfile(filenames)




Arguments
~~~~~~~~~

:filenames a character string or a string matrix.
: :x a matrix of boolean ( `%t` if `filenames` are existing files).
:



Description
~~~~~~~~~~~

`x = isfile(filenames)` checks whether `filenames` is an existing file
or not (a directory is not a file). See also `isdir`_.



Examples
~~~~~~~~


::

    filenames = `ls`_(SCI)
    
    x = isfile(filenames)
    
    isfile(SCI + '/etc')
    `isdir`_(SCI + '/etc')




See Also
~~~~~~~~


+ `fileinfo`_ provides information about a file
+ `isdir`_ checks if argument is a directory path


.. _isdir: isdir.html
.. _fileinfo: fileinfo.html


