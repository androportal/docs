====
"readb"
====

Scilab Function Last update : April 1993
**readb** - fortran file binary read



Calling Sequence
~~~~~~~~~~~~~~~~

x=readb(file-name,m,n [,rec])




Parameters
~~~~~~~~~~


+ **file-name** : string or integer
+ **m, n** : integers (dimensions of the matrix x). Set m=-1 if you do
  not know the numbers of rows, so all the file is read
+ **rec** : vector of positive integers. the selected records for
  direct access. This vector size must be equal to the number of rows of
  desired **x** .




Description
~~~~~~~~~~~

binary read of the matrix **x** in the file **file-name** . Matrix
entries are supposed to have been stored on 8 byte words.

For direct record access, file must have been previously opened using
**file** function to set the record_length. **file-name** must be the
result of the **file** function.



See Also
~~~~~~~~

` **file** `_,` **write** `_,` **writb** `_,` **mget** `_,` **read4b**
`_,

.. _
      : ://./fileio/writb.htm
.. _
      : ://./fileio/file.htm
.. _
      : ://./fileio/read4b.htm
.. _
      : ://./fileio/mget.htm
.. _
      : ://./fileio/write.htm


