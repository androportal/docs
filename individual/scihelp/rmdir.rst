


rmdir
=====

Remove a directory



Calling Sequence
~~~~~~~~~~~~~~~~


::

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

    `mkdir`_(SCI,'Directory')
    rmdir(SCI+'/Directory')




See Also
~~~~~~~~


+ `cd`_
+ `dir`_ gets file list
+ `mkdir`_ Make new directory


.. _cd: chdir.html#cd
.. _mkdir: mkdir.html
.. _dir: dir.html


