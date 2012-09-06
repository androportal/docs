


getshortpathname
================

gets short path name



Calling Sequence
~~~~~~~~~~~~~~~~


::

    shortpath=getshortgpathname(longpath)
    [shortpath,bOK]=getshortpathname(longpath)




Arguments
~~~~~~~~~

:longpath a character string or matrix of strings: the long path.
: :shortpath a character string or a matrix of strings: the short
  path.
: :bOK a boolean or a matrix of boolean: `%T` if path has been
  converted else `%F`.
:



Description
~~~~~~~~~~~

The `getshortpathname` primitive converts the specified path
`longpath` to its short form.

Note: If the path cannot be converted (bOK = %F) and in particular if
the operating system is not Windows, the returned short path is
identical to the input long path.



Examples
~~~~~~~~


::

    [shortpath,bOK]=getshortpathname(SCI) 
    [shortpaths,bOKs]=getshortpathname([SCI;SCI])




See Also
~~~~~~~~


+ `getlongpathname`_ gets long path name
+ `getrelativefilehname`_ given an absolute directory and an absolute
  filename, returns a relative file name
+ `pwd`_ print Scilab current directory


.. _getrelativefilehname: getrelativefilename.html
.. _getlongpathname: getlongpathname.html
.. _pwd: pwd.html


