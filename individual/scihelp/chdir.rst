


chdir
=====

changes Scilab current directory



cd
==

changes Scilab current directory



Calling Sequence
~~~~~~~~~~~~~~~~


::

    b=chdir(path)
    realpath=cd(path)
    cd path




Arguments
~~~~~~~~~

:b a boolean `%t` if ``chdir`_` operation is ok
: :path a character string
: :realpath a character string, the real path name after pathname
  conversion (see below)
:



Description
~~~~~~~~~~~

Change the current Scilab directory to those given by `path`. Note
that path conversion is performed and for example
`SCI/modules/core/macros` is a valid pattern for both Unix and
Windows. If `path` is empty change to "home" directory.



Examples
~~~~~~~~


::

    `chdir`_(TMPDIR);
    pwd
    cd 
    cd SCI




See Also
~~~~~~~~


+ `pwd`_ print Scilab current directory
+ `SCI`_ variable containing the value of the root path of Scilab.
+ `SCIHOME`_ contains the path to preferences, history files of your
  Scilab session.
+ `TMPDIR`_ temporary directory path.


.. _chdir: chdir.html
.. _SCI: SCI.html
.. _SCIHOME: SCIHOME.html
.. _TMPDIR: TMPDIR.html
.. _pwd: pwd.html


