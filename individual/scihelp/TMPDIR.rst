


TMPDIR
======

temporary directory path.



Description
~~~~~~~~~~~

The `TMPDIR` constant holds the temporary directory absolute path of a
Scilab process. Each Scilab process has its own temporary directory,
created and referenced to `TMPDIR` during Scilab startup. The
temporary directory is deleted when Scilab stops.

The temporary directories are created as subdirectories of the system
temporary directory and named SCI_TMP_<unique> where <unique> is some
number generated at Scilab startup for the name to be unique. Under
GNU/Linux, UNIX and Mac OS X, directory access rights are limited to
the Scilab user.

The `TMPDIR` constant cannot be altered during Scilab execution.
However, under GNU/Linux, UNIX and Mac OS X, the system temporary
directory (usually `/tmp`) can be selected by altering the `TMPDIR`
system variable.



See Also
~~~~~~~~


+ `SCIHOME`_ contains the path to preferences, history files of your
  Scilab session.



+ `SCI`_ variable containing the value of the root path of Scilab.


.. _SCI: SCI.html
.. _SCIHOME: SCIHOME.html


