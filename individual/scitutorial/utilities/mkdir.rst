====
"mkdir"
====

Scilab Function Last update : 10/02/2006
**mkdir** - Make new directory



Calling Sequence
~~~~~~~~~~~~~~~~

mkdir('dirname')
mkdir('parentdir','newdir')
status=mkdir( ... )
[status,msg]=mkdir( ... )




Description
~~~~~~~~~~~

mkdir('dirname') creates the directory dirname in the current
directory, if dirname represents a relative path.

mkdir('parentdir','dirname') creates the directory dirname in the
existing directory parentdir, where parentdir is an absolute or
relative pathname.

[status,message] = mkdir(...,'dirname') creates the directory dirname
in the existing directory parentdir, returning the status, a message.
Here, status is 1 for success, 2 if it already exists, and 0
otherwise.



Examples
~~~~~~~~


::

    
    rmdir(SCI + '/Directory'); //remove the directory if it exists
    mkdir(SCI,'Directory')
    status=mkdir(SCI,'Directory')
    [status,msg] = mkdir(SCI,'Directory')
    rmdir(SCI+'/Directory')
      




See Also
~~~~~~~~

` **cd** `_,` **dir** `_,` **rmdir** `_,



Authors
~~~~~~~

****A.C


.. _
      : ://./utilities/../fileio/dir.htm
.. _
      : ://./utilities/rmdir.htm
.. _
      : ://./utilities/chdir.htm


