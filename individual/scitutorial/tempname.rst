


tempname
========

Unique name for temporary file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    tmp_name = tempname([prefix])




Arguments
~~~~~~~~~

:tmp_name a string
:

:prefix a string: prefix of filename (On Windows, 3 characters
  maximum).
:



Description
~~~~~~~~~~~

Creates a file with a unique filename in the TMPDIR directory.

tmp_nam = tempname() returns a unique string, tmp_nam, suitable for
use as a temporary filename.



Examples
~~~~~~~~


::

    F1 = tempname()
    `isfile`_(F1)
    F2 = tempname('TMP')
    `isfile`_(F2)




History
~~~~~~~
Version Description 5.4.0 Function tempname introduced.


