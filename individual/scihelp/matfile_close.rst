


matfile_close
=============

Closes a Matlab V5 binary MAT-file.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    status = matfile_close(fd)




Arguments
~~~~~~~~~

:fd Real: file descriptor (returned by `matfile_open`_).
: :status Boolean: *%T* if closure succeeds, *%F* otherwise.
:



Description
~~~~~~~~~~~

Closes a Matlab binary MAT-file opened by `matfile_open`_.



See Also
~~~~~~~~


+ `matfile_open`_ Opens a Matlab V5 binary MAT-file.
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
.. _matfile_varwrite: matfile_varwrite.html
.. _matfile_open: matfile_open.html
.. _matfile_varreadnext: matfile_varreadnext.html


