


matfile_open
============

Opens a Matlab V5 binary MAT-file.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    fd = matfile_open(filename[, mode])




Arguments
~~~~~~~~~

:filename String: the path of the file. Must contain only ANSI
  character.
: :mode String: file access type ( `"r"` by default).

    + *"r"*: opens the file for reading.
    + *"w"*: opens the file for writing.

: :fd Real: file descriptor (-1 if opening failed).
:



Description
~~~~~~~~~~~

Opens a Matlab binary MAT-file for reading or writing data.



See Also
~~~~~~~~


+ `matfile_close`_ Closes a Matlab V5 binary MAT-file.
+ `matfile_varreadnext`_ Reads next variable in a Matlab V5 binary
  MAT-file.
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
.. _matfile_varreadnext: matfile_varreadnext.html


