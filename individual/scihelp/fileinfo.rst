


fileinfo
========

provides information about a file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [x,ierr] = fileinfo(files)




Arguments
~~~~~~~~~

:files a character string or a string column vector, file pathname
: :x an integer vector of size 13 containing information or an empty
  matrix if file does not exist. If `files` is a string column vector,
  `x` will be a matrix of size `m x 13`. If a filename does not exist,
  it will return as output information a line of size 13 with `Nan` in
  each element of this line.
: :ierr error indicator, 0, if no error has occurred
:



Description
~~~~~~~~~~~

`x = fileinfo(`file`_)` returns

:x(1) The file size
: :x(2) The file mode (decimal value)
: :x(3) The user id
: :x(4) The group id
: :x(5) The device number
: :x(6) The date of last data modification
: :x(7) The date of last file status change
: :x(8) The date of last access
: :x(9) The device type (if inode device)
: :x(10) The blocksize for filesystem I/O (always 0 on Windows)
: :x(11) The number of blocks allocated (always 0 on Windows)
: :x(12) The inode
: :x(13) The number of hard links
:



References
~~~~~~~~~~

This function is an interface to the C function stat.

Permissions are typically specified as octal numbers:
``dec2oct`_(x(2))` to convert.

Numeric mode is from one to four octal digits (0-7), derived by adding
up the bits with values 4, 2, and 1. Any omitted digits are assumed to
be leading zeros. The first digit selects the set user ID (4) and set
group ID (2) and sticky (1) attributes. The second digit selects
permissions for the user who owns the file: read (4), write (2), and
execute (1); the third selects permissions for other users in the
file's group, with the same values; and the fourth for other users not
in the file's group, with the same values.



Examples
~~~~~~~~


::

    w = fileinfo(SCI+'/etc/scilab.start')
    // file permission
    `dec2oct`_(w(2))
    // file date
    `getdate`_(w(6))
    
    // Checks write permission on a file
    w = fileinfo(SCI+'/etc/scilab.start')
    
    S_IWRITE = 128; // mask write permission
    S_IEXEC = 64; // mask exec permission
    S_IREAD = 256; // mask read permission
    S_IFCHR = 8192; // mask directory permission
    
    if ( `bitand`_( w(2), S_IWRITE ) <> 0) then
     `disp`_('WRITE PERMISSION on this file.');
    else
     `disp`_('NO WRITE PERMISSION on this file.');
    end
    
    FILES = [SCI;SCIHOME;'not_exist_file';TMPDIR]
    [X,ERRS] = fileinfo(FILES)




See Also
~~~~~~~~


+ `getdate`_ get date and time information
+ `file`_ file management
+ `dispfiles`_ displays opened files properties
+ `newest`_ returns newest file of a set of files
+ `isdir`_ checks if argument is a directory path


.. _isdir: isdir.html
.. _newest: newest.html
.. _dec2oct: dec2oct.html
.. _getdate: getdate.html
.. _file: file.html
.. _dispfiles: dispfiles.html


