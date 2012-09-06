


matfile_listvar
===============

Lists variables of a Matlab V5 binary MAT-file.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [names[, classes[, types]]] = matfile_listvar(fd)




Arguments
~~~~~~~~~

:fd Real: file descriptor (returned by `matfile_open`_).
: :names String vector: names of the variables.
: :classes Real vector: classes of the variables.
: :types Real vector: data types of the variables.
:



Description
~~~~~~~~~~~

Lists variables of a Matlab binary MAT-file opened by `matfile_open`_.



See Also
~~~~~~~~


+ `matfile_open`_ Opens a Matlab V5 binary MAT-file.
+ `matfile_close`_ Closes a Matlab V5 binary MAT-file.
+ `matfile_varwrite`_ Write a variable in a Matlab V5 binary MAT-file.
+ `matfile_varreadnext`_ Reads next variable in a Matlab V5 binary
  MAT-file.




Bibliography
~~~~~~~~~~~~

This function uses MATIO library (
``http://sourceforge.net/projects/matio/`_` ).

.. _http://sourceforge.net/projects/matio/: http://sourceforge.net/projects/matio/
.. _matfile_close: matfile_close.html
.. _matfile_varwrite: matfile_varwrite.html
.. _matfile_open: matfile_open.html
.. _matfile_varreadnext: matfile_varreadnext.html


