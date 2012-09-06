


read4b
======

fortran file binary read



Calling Sequence
~~~~~~~~~~~~~~~~


::

    x=read4b(file-name,m,n [,rec])




Arguments
~~~~~~~~~

:file-name string or integer
: :m, n integers (dimensions of the matrix x). Set m=-1 if you do not
  know the numbers of rows, so all the file is read
: :rec vector of positive integers. the selected records for direct
  access. This vector size must be equal to the number of rows of
  desired `x`.
:



Description
~~~~~~~~~~~

binary read of the matrix `x` in the file `file-name`. Matrix entries
are supposed to have been stored on 4 byte words.

For direct record access, file must have been previously opened using
`file` function to set the record_length. `file-name` must be the
result of the `file` function.



See Also
~~~~~~~~


+ `file`_ file management
+ `write`_ write in a formatted file
+ `writb`_ fortran file binary write
+ `mget`_ reads byte or word in a given binary format and converts to
  a double type
+ `write4b`_ fortran file binary write


.. _write: write.html
.. _mget: mget.html
.. _write4b: write4b.html
.. _writb: writb.html
.. _file: file.html


