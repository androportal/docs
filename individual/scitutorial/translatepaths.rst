


translatepaths
==============

convert a set of Matlab M-files directories to Scilab



Calling Sequence
~~~~~~~~~~~~~~~~


::

    translatepaths(dirs_path [,res_path])




Arguments
~~~~~~~~~

:dirs_path a character string vector which gives the paths of Matlab
  M-file directories to convert
: :res_path a character string which gives the path of the directory
  where the Scilab functions are written to. Default value is current
  directory.
:



Description
~~~~~~~~~~~

`translatepaths`, converts all Matlab M-file contained in a set of
directories to Scilab functions. Each function is converted by
`mfile2sci`.

Trace of conversion information is stored in a file named `"log"` in
the `res_path` directory

When called without rhs, `translatepaths()` launches a GUI to help to
select a file/directory and options.



See Also
~~~~~~~~


+ `mfile2sci`_ Matlab M-file to Scilab conversion function


.. _mfile2sci: mfile2sci.html


