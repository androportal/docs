


get_absolute_file_path
======================

gives an absolute pathname of a file opened in Scilab



Calling Sequence
~~~~~~~~~~~~~~~~


::

    pathname = get_absolute_file_path(filename)




Arguments
~~~~~~~~~

:filename a character string: filename.
: :pathname a character string: an absolute pathname.
:



Description
~~~~~~~~~~~

`get_absolute_file_path` gives an absolute pathname of a file already
opened in Scilab.

`get_absolute_file_path` searches in Scilab's internal list of files
currently opened `filename` and returns its path `pathname`.

If file is not opened, it will return an error.

In previous version (Scilab 5.0.x) current directory was returned if
file was not found.

This function can be used to find from where (path) is executed a
Scilab script.



Examples
~~~~~~~~


::

    // exec this script
    
    a=`mopen`_(TMPDIR+'test.sce','wt');
    `disp`_(get_absolute_file_path('test.sce'));
    `mclose`_(a);




See Also
~~~~~~~~


+ `getshortpathname`_ gets short path name
+ `getlongpathname`_ gets long path name
+ `pwd`_ print Scilab current directory


.. _getlongpathname: getlongpathname.html
.. _pwd: pwd.html
.. _getshortpathname: getshortpathname.html


