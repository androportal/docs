====
"dir"
====

Scilab Function Last update : 13/07/2005
**dir** - get file list



Calling Sequence
~~~~~~~~~~~~~~~~

dir path
S=dir([path])




Parameters
~~~~~~~~~~


+ **path** : a string matrix giving a directory pathname (eventually
  ended by a pattern built with ***** ). Default value is **.**
+ **S** : a **tlist** of type **dir** with fields : **name** ,
  **date** and **isdir**




Description
~~~~~~~~~~~

**dir** can be used to get the files which match the patterns given by
the path argument. Patterns are given to the unix **ls** or to the
windows **dir** commands in order to get information on files. Thus in
order to write portable Scilab script valid wildcard patterns for both
os are to be given. Note that Pathname conversion is performed and for
example **SCI/macros/util/*.sci** is a valid pattern for both unix and
windows.

The **name** field of the returned variable is the column vector of
the file names.

The **date** field of the returned variable is the column vector of
integers containing a last modification date coded in second from 1
Jan 1970).

The **isdir** field of the returned variable is the column vector of
boolean true if the corresponding name is a directory.

The default display of the returned structure is a column formatted
list of files. It can be changed redefining the function **%dir_p**



Examples
~~~~~~~~


::

    
        
        dir
        dir SCI/macros/util/base*.sci
        x=dir('SCI/macros/util/base*.sci')
        dt=getdate(x.date);
        mprintf("%s: %d-%d-%d %d:%d:%d\n",x.name,dt(:,[3 2 1 7:9]))
        
      




See Also
~~~~~~~~

` **listfiles** `_,` **ls** `_,` **fileinfo** `_,` **date** `_,

.. _
      : ://./fileio/fileinfo.htm
.. _
      : ://./fileio/ls.htm
.. _
      : ://./fileio/../utilities/listfiles.htm
.. _
      : ://./fileio/../programming/date.htm


