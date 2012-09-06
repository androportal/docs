


getlongpathname
===============

gets long path name



Calling Sequence
~~~~~~~~~~~~~~~~


::

    longpath=getlongpathname(shortpath)
    [longpath,bOK]=getlongpathname(shortpath)




Arguments
~~~~~~~~~

:shortpath a character string or matrix of strings: the short path.
: :longpath a character string or matrix of strings: the long path.
: :bOK a boolean or a matrix of boolean: `%T` if path has been
  converted else `%F`.
:



Description
~~~~~~~~~~~

The `getlongpathname` primitive converts the specified path
`shortpath` to its long form. If no long path is found, this primitive
returns the specified name.

Note: If the path cannot be converted (bOK = %F) and in particular if
the operating system is not Windows, the returned long path is
identical to the input short path.



Examples
~~~~~~~~


::

    [longpath,bOK]=getlongpathname(SCI) 
    [longpaths,bOKs]=getlongpathname([SCI;SCI])




See Also
~~~~~~~~


+ `getshortpathname`_ gets short path name
+ `getrelativefilehname`_ given an absolute directory and an absolute
  filename, returns a relative file name
+ `pwd`_ print Scilab current directory


.. _getrelativefilehname: getrelativefilename.html
.. _pwd: pwd.html
.. _getshortpathname: getshortpathname.html


