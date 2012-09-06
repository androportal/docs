


SCIHOME
=======

contains the path to preferences, history files of your Scilab
session.



Description
~~~~~~~~~~~

The `SCIHOME` contains the path to preferences, history files of your
Scilab session.

`SCIHOME` definition:

On Windows XP: "C:/Documents and Settings/<User>/Scilab/<Scilab-
Version>"

On Windows Vista and Seven: "C:/User/AppData/Roaming/<User>/Scilab
/<Scilab-Version>"

based on Windows %HOMEPATH% environment variable.

On GNU/Linux or Unix: /home/<User>/.Scilab/<Scilab-Version>

On Mac OS X: /Users/lt;User>/.Scilab/<Scilab-Version>

<User> is your current login name

<Scilab-Version> is current version of Scilab used.



Examples
~~~~~~~~


::

    `disp`_(SCIHOME);
    `isdir`_(SCIHOME)




See Also
~~~~~~~~


+ `SCI`_ variable containing the value of the root path of Scilab.



+ `TMPDIR`_ temporary directory path.


.. _SCI: SCI.html
.. _TMPDIR: TMPDIR.html


