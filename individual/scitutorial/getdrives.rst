


getdrives
=========

gets the drive letters of all mounted filesystems on the computer



Calling Sequence
~~~~~~~~~~~~~~~~


::

    drives = getdrives()




Arguments
~~~~~~~~~

:drives a matrix of strings
:



Description
~~~~~~~~~~~

The function `getdrives` gets the drive letters of all mounted
filesystems on the computer.

`getdrives` returns the roots of all mounted filesystems on the
computer as a matrix of strings.

For GNU/Linux this list consists solely of the root directory, `/`.



Examples
~~~~~~~~


::

    getdrives()




