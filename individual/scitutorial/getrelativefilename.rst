


getrelativefilename
===================

given an absolute directory and an absolute filename, returns a
relative file name



Calling Sequence
~~~~~~~~~~~~~~~~


::

    rel_file = getrelativefilename(abs_dir,abs_file)




Arguments
~~~~~~~~~

:abs_dir a character string: an absolute directory.
: :abs_file a character string: an absolute filename.
: :rel_file a character string : relative filename.
:



Description
~~~~~~~~~~~

Given an absolute directory `abs_dir` and an absolute filename
`abs_file`, `getrelativefilename` returns a relative file name
`rel_file`.

For example, if the current directory is `C:\scilab\bin` and the
filename `C:\scilab\modules\helptools\readme.txt` is given,
`getrelativefilename` will return `..\modules\helptools\readme.txt`.



Examples
~~~~~~~~


::

    getrelativefilename(pwd(), SCI+'/COPYING')
    getrelativefilename(TMPDIR, SCI+'/COPYING')
    getrelativefilename(SCI+'/bin', SCI+'/COPYING')
    getrelativefilename(pwd(), SCI+'/ACKNOLEDGMENTS')
    getrelativefilename(TMPDIR, SCI+'/ACKNOLEDGMENTS')
    getrelativefilename(SCI+'/bin', SCI+'/ACKNOLEDGMENTS')




See Also
~~~~~~~~


+ `getshortpathname`_ gets short path name
+ `getlongpathname`_ gets long path name
+ `pwd`_ print Scilab current directory


.. _getlongpathname: getlongpathname.html
.. _pwd: pwd.html
.. _getshortpathname: getshortpathname.html


