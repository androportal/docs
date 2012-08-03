====
"rmdir"
====

Scilab Function Last update : 02/09/2004
**rmdir** - Remove a directory



Calling Sequence
~~~~~~~~~~~~~~~~

rmdir('dirname')
rmdir('dirname','s')
[status,message] = rmdir('dirname','s')




Description
~~~~~~~~~~~

rmdir('dirname') removes the directory dirname from the current
directory. If the directory is not empty, you must use the s argument.
If dirname is not in the current directory, specify the relative path
to the current directory or the full path for dirname.

rmdir('dirname','s') removes the directory dirname and its contents
from the current directory.

[status, message] = rmdir('dirname','s') removes the directory dirname
and its contents from the current directory, returning the status, and
a message. Here, status is 1 for success and is 0 for error.



Examples
~~~~~~~~


::

    
    mkdir(SCI,'Directory')
    rmdir(SCI+'/Directory')
    
      




See Also
~~~~~~~~

` **cd** `_,` **dir** `_,` **mkdir** `_,



Authors
~~~~~~~

****A.C


.. _
      : ://./utilities/../fileio/dir.htm
.. _
      : ://./utilities/mkdir.htm
.. _
      : ://./utilities/chdir.htm


