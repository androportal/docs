====
"writb"
====

Scilab Function Last update : April 1993
**writb** - fortran file binary write



Calling Sequence
~~~~~~~~~~~~~~~~

writb(file-name,a [,rec])




Parameters
~~~~~~~~~~


+ **file-name** : string or integer
+ **rec** : vector of positive integers. the selected records for
  direct access. This vector size must be equal to the number of rows of
  **a**




Description
~~~~~~~~~~~

writes in binary format the matrix **a** in the file **'filename'** ..
Matrix entries are stored on 4 byte words

For direct record access, file must have been previously opened using
**file** function to set the record_length. **file-name** must be the
result of the **file** function.



See Also
~~~~~~~~

` **file** `_,` **readb** `_,` **write** `_,` **mput** `_,`
**write4b** `_,

.. _
      : ://./fileio/readb.htm
.. _
      : ://./fileio/write4b.htm
.. _
      : ://./fileio/file.htm
.. _
      : ://./fileio/mput.htm
.. _
      : ://./fileio/write.htm


