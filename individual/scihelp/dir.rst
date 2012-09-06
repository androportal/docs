


dir
===

gets file list



Calling Sequence
~~~~~~~~~~~~~~~~


::

    dir path
    S=dir([path])




Arguments
~~~~~~~~~

:path a string matrix giving a directory pathname (eventually ended by
  a pattern built with `*`). Default value is `.` (a dot)
: :S a `tlist` of type `dir` with fields : `name`, `date`, `bytes` and
  `isdir`
:



Description
~~~~~~~~~~~

`dir` can be used to get the files which match the patterns given by
the path argument. Patterns are given to the Unix `ls` or to the
Windows `dir` commands in order to get information about files. Thus
in order to write portable Scilab script valid wildcard patterns for
both OS are to be given. Note that pathname conversion is performed
and for example `SCI/modules/core/macros/*.sci` is a valid pattern for
both Unix and Windows.

The `name` field of the returned variable is the column vector of the
file names.

The `date` field of the returned variable is the column vector of
integers containing a last modification date coded in second from 1
Jan 1970.

The `bytes` field of the returned variable is the column vector of
integers containing the size of the files in bytes.

The `isdir` field of the returned variable is the column vector of
boolean true if the corresponding name is a directory.

The default display of the returned structure is a column formatted
list of files. It can be changed redefining the function `%dir_p`.

Since Scilab 5.3.1, a trailing "/" or "\" (See `filesep`_) is
displayed for each directory.



Examples
~~~~~~~~


::

    dir
    dir SCI/modules/core/macros/*.bin
    x=dir('SCI/modules/core/macros/*.bin')
    dt=`getdate`_(x.date);
    `mprintf`_("%s: %04d-%02d-%02d %02d:%02d:%02d\n",x.name,dt(:,[1 2 6 7:9]))




See Also
~~~~~~~~


+ `listfiles`_ list of files
+ `findfiles`_ finding all files with a given file specification
+ `ls`_ shows files
+ `fileinfo`_ provides information about a file
+ `date`_ Current date as date string


.. _filesep: filesep.html
.. _fileinfo: fileinfo.html
.. _listfiles: listfiles.html
.. _findfiles: findfiles.html
.. _ls: ls.html
.. _date: date.html


