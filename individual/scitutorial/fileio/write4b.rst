====
"write4b"
====

Scilab Function Last update : April 1993
**write4b** - fortran file binary write



Calling Sequence
~~~~~~~~~~~~~~~~

write4b(file-name,a [,rec])




Parameters
~~~~~~~~~~


+ **file-name** : string or integer
+ **rec** : vector of positive integers. the selected records for
  direct access. This vector size must be equal to the number of rows of
  **a**




Description
~~~~~~~~~~~

writes in binary format the matrix **a** in the file **'filename'** .
Matrix entries are stored on 8 byte words

For direct record access, file must have been previously opened using
**file** function to set the record_length. **file-name** must be the
result of the **file** function.



See Also
~~~~~~~~

` **file** `_,` **readb** `_,` **write** `_,` **mput** `_,` **read4b**
`_,

.. _
      : ://./fileio/readb.htm
.. _
      : ://./fileio/file.htm
.. _
      : ://./fileio/read4b.htm
.. _
      : ://./fileio/write.htm
.. _
      : ://./fileio/mput.htm


