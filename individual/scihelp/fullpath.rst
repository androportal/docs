


fullpath
========

creates an full path name for the specified relative path name.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    res = fullpath(relative_path)




Arguments
~~~~~~~~~

:res a string or matrix of string
:

:relative_path a string or a matrix of string
:



Description
~~~~~~~~~~~

`fullpath(relative_path)` сreates an full path name for the specified
relative path name.

On GNU/Linux `relative_path` needs to exist.



Examples
~~~~~~~~


::

    `cd`_(TMPDIR);
    `mkdir`_(TMPDIR + "/niv1");
    `mkdir`_(TMPDIR + "/niv1/niv2");
    `mkdir`_(TMPDIR + "/niv1/niv2/niv3");
    `mputl`_(' ', TMPDIR + "/niv1/test1.txt");
    `mputl`_(' ' , TMPDIR + "/niv1/niv2/test2.txt");
    
    `cd`_(TMPDIR + "/niv1/niv2/niv3");
    
    r1 = fullpath("../../test1.txt")
    r2 = fullpath("../test2.txt")
    M = ["../../test1.txt", "../test2.txt"];
    R = fullpath(M)




History
~~~~~~~
Version Description 5.4.0 Matrix of String managed (SEP 72)


