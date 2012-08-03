====
"fileinfo"
====

Scilab Function Last update : Jun 1999
**fileinfo** - Provides information about a file



Calling Sequence
~~~~~~~~~~~~~~~~

[x,ierr]=fileinfo(file)




Parameters
~~~~~~~~~~


+ **file** : a character string, the file pathname
+ **x** : an integer vector of size 6 containing information or an
  empty matrix if file does not exist.
+ **ierr** : error indicator, 0, if no error has occured




Description
~~~~~~~~~~~

x=fileinfo(file) returns

**x(1)**: The file size
**x(2)**: The file mode
**x(3)**: The user id
**x(4)**: the group id
**x(5)**: The device number
**x(6)**: The date of last modification
**x(7)**: The date of last change
**x(8)**: The date of last access
**x(9)**: The device type (if inode device)
**x(10)**: The blocksize for filesystem I/O
**x(11)**: The number of blocks allocated
**x(12)**: The inode
**x(13)**: The number of hard links




Reference
~~~~~~~~~

This function is an interface to the C function stat.



Examples
~~~~~~~~


::

    
    
    w=fileinfo(SCI+'/scilab.star')
    getdate(w(6))
       
      




See Also
~~~~~~~~

` **getdate** `_,` **file** `_,` **dispfiles** `_,` **newest** `_,`
**isdir** `_,



Author
~~~~~~

S. Steer INRIA

.. _
      : ://./fileio/dispfiles.htm
.. _
      : ://./fileio/file.htm
.. _
      : ://./fileio/isdir.htm
.. _
      : ://./fileio/../programming/getdate.htm
.. _
      : ://./fileio/newest.htm


