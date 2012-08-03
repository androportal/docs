====
"ls"
====

Scilab Function Last update : 23/06/2004
**ls** - show files



Calling Sequence
~~~~~~~~~~~~~~~~

ls path options
files=ls( [path) [,options])




Parameters
~~~~~~~~~~


+ **path** : a string matrix giving a directory pathname (eventually
  ended by a pattern built with ***** ). Default value is **.**
+ **options** : a sequence of strings which can be added under Unix
  systems: the Unix **ls** command options. (default value **'-C'** ).
+ **files** : a string column vector. By default it contains a column
  formatted output. if one of the option is **'-1'** . **files**
  contains an entry for each files




Description
~~~~~~~~~~~

**ls** can be used to list the files which match the patterns given by
the path argument. Patterns are given to the unix **ls** or to the
windows **dir** commands in order to get information on files. Thus in
order to write portable Scilab script valid wildcard patterns for both
os are to be given. Note that Pathname conversion is performed and for
example **SCI/macros/util/*.sci** is a valid pattern for both unix and
windows.

Under Unix systems it is possible to add options to rule the output
(see the unix manual about the ls command)

If you want to get a vector of all files matching a pattern use
preferabily the ` **listfiles** `_ or the ` **dir** `_function.



Examples
~~~~~~~~


::

    
        
        ls
        ls SCI/macros/util/*.sci
        x=ls('SCI/macros/util/f*.sci')
        
      




See Also
~~~~~~~~

` **listfiles** `_,` **dir** `_,` **fileinfo** `_,

.. _
      : ://./fileio/fileinfo.htm
.. _
      : ://./fileio/../utilities/listfiles.htm
.. _
      : ://./fileio/dir.htm


