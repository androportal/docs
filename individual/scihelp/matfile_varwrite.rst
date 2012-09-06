


matfile_varwrite
================

Write a variable in a Matlab V5 binary MAT-file.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    status = matfile_varreadnext(fd, name, value, compressionflag)




Arguments
~~~~~~~~~

:fd Real: file descriptor (returned by `matfile_open`_).
: :name String: name of the variable to write in the file.
: :value Any Scilab type: value of the variable to write in the file.
: :compressionflag Boolean: indicate if data compression has to be
  used (flag equaled to *%T*) or not.
: :status Boolean: *%T* if writing succeeds, *%F* otherwise.
:



Description
~~~~~~~~~~~

Writes a variable in a Matlab binary MAT-file opened by
`matfile_open`_.



See Also
~~~~~~~~


+ `matfile_open`_ Opens a Matlab V5 binary MAT-file.
+ `matfile_close`_ Closes a Matlab V5 binary MAT-file.
+ `matfile_varreadnext`_ Reads next variable in a Matlab V5 binary
  MAT-file.
+ `matfile_listvar`_ Lists variables of a Matlab V5 binary MAT-file.




Bibliography
~~~~~~~~~~~~

This function uses MATIO library (
``http://sourceforge.net/projects/matio/`_` ).

.. _http://sourceforge.net/projects/matio/: http://sourceforge.net/projects/matio/
.. _matfile_listvar: matfile_listvar.html
.. _matfile_close: matfile_close.html
.. _matfile_open: matfile_open.html
.. _matfile_varreadnext: matfile_varreadnext.html


