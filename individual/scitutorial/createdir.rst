


createdir
=========

makes new directory



Calling Sequence
~~~~~~~~~~~~~~~~


::

    createdir(dirname)
    status = createdir(dirname)




Arguments
~~~~~~~~~

:dirname a character string.
: :status a boolean.
:



Description
~~~~~~~~~~~

`createdir(`dirname`_)` creates the directory `dirname` in the current
directory, if `dirname` is not in the current directory, specify the
relative path to the current directory or the full path for `dirname`.

`[status] = createdir(`dirname`_)` creates the directory `dirname` in
the existing directory, returning the status. Here, `status` is `%T`
for success and `%F` otherwise.

`createdir` is used by `mkdir`.



Examples
~~~~~~~~


::

    createdir(TMPDIR+'/Directory_test')
    `removedir`_(TMPDIR+'/Directory_test')




See Also
~~~~~~~~


+ `mkdir`_ Make new directory
+ `rmdir`_ Remove a directory


.. _dirname: dirname.html
.. _mkdir: mkdir.html
.. _rmdir: rmdir.html


