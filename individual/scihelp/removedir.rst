


removedir
=========

Remove a directory



Calling Sequence
~~~~~~~~~~~~~~~~


::

    removedir('dirname')
    [status] = removedir('dirname','s')




Description
~~~~~~~~~~~

removedir('dirname') removes the directory dirname from the current
directory. If the directory is not empty, files and subdirectories are
removed. If dirname is not in the current directory, specify the
relative path to the current directory or the full path for dirname.

[status] = removedir('dirname') removes the directory dirname and its
contents from the current directory, returning the status. Here,
status is %T for success and is %F for error.

removedir is used by rmdir.



Examples
~~~~~~~~


::

    `createdir`_(SCIHOME+'/Directory_test')
    removedir(SCIHOME+'/Directory_test')




See Also
~~~~~~~~


+ `mkdir`_ Make new directory
+ `rmdir`_ Remove a directory


.. _mkdir: mkdir.html
.. _rmdir: rmdir.html


