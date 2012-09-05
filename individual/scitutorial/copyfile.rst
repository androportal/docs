


copyfile
========

copies a file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    copyfile(source,destination)
    [status,message] = copyfile(source,destination)




Arguments
~~~~~~~~~

:source a character string: a filename or a directory name.
: :destination a character string: a directory name.
:



Description
~~~~~~~~~~~

`copyfile(source,destination)` copies the file or directory `source`
(and subdirectories) to the file or directory `destination`.

If source is a directory, destination can not be a file. `copyfile`
replaces existing files without warning.

`[status, message] = copyfile('source','destination')` copies source
to destination, returning the status and a message.

Whatever the operating system, if the copy succeeds, the status is 1
and the message is empty; if the copy fails, the status is 0 and the
message is not empty.

The timestamp given to the destination file is identical to that taken
from source file.



Examples
~~~~~~~~


::

    copyfile(SCI+"/etc/scilab.start",TMPDIR+"/scilab.start")
    [status,message] = copyfile(SCI+"/etc/scilab.start",TMPDIR);




See Also
~~~~~~~~


+ `movefile`_ Move file or directory
+ `mdelete`_ deletes file(s)


.. _movefile: movefile.html
.. _mdelete: mdelete.html


