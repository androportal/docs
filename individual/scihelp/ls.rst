


ls
==

shows files



Calling Sequence
~~~~~~~~~~~~~~~~


::

    files=ls [path]
    files=ls( [path] )




Arguments
~~~~~~~~~

:path a string matrix giving a directory pathname (eventually ended by
  a pattern built with `*`). Default value is `.` (a dot).
: :files a string column vector. By default it contains a column
  formatted output.
:



Description
~~~~~~~~~~~

`ls` can be used to list the files which match the patterns given by
the path argument. Patterns are given to the Unix `ls` or to the
Windows `dir` commands in order to get information on files. Thus in
order to write portable Scilab script valid wildcard patterns for both
OS are to be given. Note that pathname conversion is performed and for
example `SCI/modules/core/macros/*.sci` is a valid pattern for both
Unix and Windows.

If you want to get a vector of all files matching a pattern use
preferabily the `listfiles`_ or the `dir`_ function.

Please note that starting from the version 5.0 of Scilab, the second
input argument has been removed (a sequence of strings which can be
added under Unix systems: the Unix `ls` command options). This option
has been removed mainly for security and portability reasons.



Examples
~~~~~~~~


::

    ls
    ls SCI/modules/core/macros/*.sci
    x=ls('SCI/modules/core/macros/*.sci')




See Also
~~~~~~~~


+ `listfiles`_ list of files
+ `findfiles`_ finding all files with a given file specification
+ `dir`_ gets file list
+ `fileinfo`_ provides information about a file


.. _listfiles: listfiles.html
.. _fileinfo: fileinfo.html
.. _dir: dir.html
.. _findfiles: findfiles.html


