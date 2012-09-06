


file
====

file management



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [unit [,err]]=file('open', file-name [,status] [,access [,recl]] [,format])
    file(action,unit)
    [units [,typ [,nams [,mod [,swap]]]]] = file([unit])




Arguments
~~~~~~~~~

:file-name string, file name of the file to be opened
: :status string, The status of the file to be opened
    :"new" file must not exist new file (default)
    : :"old" file must already exists.
    : :"unknown" unknown status
    : :"scratch" file is to be deleted at end of session
    :

: :access string, The type of access to the file
    :"sequential" sequential access (default)
    : :"direct" direct access.
    :

: :format string,
    :"formatted" for a formatted file (default)
    : :"unformatted" binary record.
    :

: :recl integer,is the size of records in bytes when `access="direct"`
: :unit integer, logical unit descriptor of the opened file
: :units integer vector, logical unit descriptor of the opened files.
  Units 5 and 6 (%io) are reserved by the system for input and output
  devices.
: :typs Character string vector, type (C or Fortran) of opened files.
: :nams Character string vector, pathnames of opened files.
: :mod file opening mode. Formed by three digits abc
    :Fortran files
        :a 0 stands for formatted and 1 for unformatted (binary)
        : :b 0 stands for sequential access and 1 for direct access
        : :c 0 stands for "new", 1 for "old", 2 for "scratch" and 3 for
          "unknown"
        :

    : :C files
        ::a 1 stands for "r" (read), 2 stands for "w" (write) and 3 for "a"
          (append)
        :b is 1 if file has been opened with a "+" (updating) mode
        :: b is 1 if file has been opened with a "b" (binary) mode
        :

    :

: :swap automatic swap switch. swap=1 if automatic swap is on. swap is
  always 0 for Fortran files.
: :err integer, error message number (see error), if open fails. If
  err is omitted an error message is issued.
: :action is one of the following strings:
    :"close" closes the file(s) given by the logical unit descriptors
      given in `units`
    : :"rewind" puts the pointer at beginning of file
    : :"backspace" puts the pointer at beginning of last record.
    : :"last" puts the pointer after last record.
    :

:



Description
~~~~~~~~~~~

selects a logical unit `unit` and manages the file `file-name`.

`[unit [,err]]=file('open', file-name [,status] [,access
[,recl]][,format])` allows to open a file with specified properties
and to get the associated unit number `unit`. This unit number may be
used for further actions on this file or as file descriptor in `read`,
`write`, `readb`, `writb`, `save`, `load` function calls.

This function can not open a UTF filename. In this case, please uses
mopen.

`file(action,unit)` allows to close the file , or move the current
file pointer .

`file()` returns the logical unit descriptors of the opened files. So
`file('close',file() )` closes all user opened files (C or Fortran
type).



Examples
~~~~~~~~


::

    u=file('open',TMPDIR+'/foo','unknown')
    for k=1:4
      a=`rand`_(1,4)
      `write`_(u,a)
    end
    file('rewind',u)
    x=`read`_(u,2,4)
    file('close',u)
    //
    u1=file('open',TMPDIR+'/foo','unknown')
    u2=`mopen`_(TMPDIR+'/foo1','wb')
    [units,typs,nams]=file()
    file('close',u1);
    `mclose`_(u2);




See Also
~~~~~~~~


+ `save`_ Save a variable or a serie of variables in a binary file
+ `load`_ Load a saved variable or a serie of variables
+ `write`_ write in a formatted file
+ `read`_ matrices read
+ `writb`_ fortran file binary write
+ `readb`_ fortran file binary read
+ `uigetfile`_ dialog window to get a file(s) name(s), path and filter
  index
+ `mopen`_ open a file in Scilab
+ `mclose`_ closes an opened file
+ `file`_ file management


.. _write: write.html
.. _readb: readb.html
.. _read: read.html
.. _mclose: mclose.html
.. _load: load.html
.. _mopen: mopen.html
.. _writb: writb.html
.. _uigetfile: uigetfile.html
.. _save: save.html
.. _file: file.html


