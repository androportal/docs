


writb
=====

fortran file binary write



Calling Sequence
~~~~~~~~~~~~~~~~


::

    writb(file-name,a [,rec])




Arguments
~~~~~~~~~

:file-name string or integer
: :rec vector of positive integers. the selected records for direct
  access. This vector size must be equal to the number of rows of `a`
:



Description
~~~~~~~~~~~

writes in binary format the matrix `a` in the file `'filename'`..
Matrix entries are stored on 4 byte words

For direct record access, file must have been previously opened using
`file` function to set the record_length. `file-name` must be the
result of the `file` function.



See Also
~~~~~~~~


+ `file`_ file management
+ `readb`_ fortran file binary read
+ `write`_ write in a formatted file
+ `mput`_ writes byte or word in a given binary format
+ `write4b`_ fortran file binary write


.. _write: write.html
.. _mput: mput.html
.. _readb: readb.html
.. _write4b: write4b.html
.. _file: file.html


