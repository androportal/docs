


matfile_varreadnext
===================

Reads next variable in a Matlab V5 binary MAT-file.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [name[, value[, vartype]]] = matfile_varreadnext(fd)




Arguments
~~~~~~~~~

:fd Real: file descriptor (returned by `matfile_open`_).
: :name String: name of the variable read or `""` if reading failed.
: :value Any Scilab type: value of the variable read or an empty
  matrix if reading failed.
: :vartype Real: type of the variable if reading succeeds or:

    + *0*: if the variable type is unknown.
    + *-1*: if end of file has been reached.

:



Description
~~~~~~~~~~~

Reads next variable in a Matlab binary MAT-file opened by
`matfile_open`_.



See Also
~~~~~~~~


+ `matfile_open`_ Opens a Matlab V5 binary MAT-file.
+ `matfile_close`_ Closes a Matlab V5 binary MAT-file.
+ `matfile_varwrite`_ Write a variable in a Matlab V5 binary MAT-file.
+ `matfile_listvar`_ Lists variables of a Matlab V5 binary MAT-file.




Bibliography
~~~~~~~~~~~~

This function uses MATIO library (
``http://sourceforge.net/projects/matio/`_` ).

.. _http://sourceforge.net/projects/matio/: http://sourceforge.net/projects/matio/
.. _matfile_listvar: matfile_listvar.html
.. _matfile_close: matfile_close.html
.. _matfile_varwrite: matfile_varwrite.html
.. _matfile_open: matfile_open.html


