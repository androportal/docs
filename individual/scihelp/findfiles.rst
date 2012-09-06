


findfiles
=========

finding all files with a given file specification



Calling Sequence
~~~~~~~~~~~~~~~~


::

    f = findfiles()
    f=findfiles(path)
    f=findfiles(path,filespec)




Arguments
~~~~~~~~~

:path a character string, a path.
: :filespec a character stirng, a file specification, for example
  `"*.sce"`.
: :f a column vector of strings, filenames.
:



Description
~~~~~~~~~~~

Finding all files with a given file specification `filespec`.



Examples
~~~~~~~~


::

    f=findfiles()
    f=findfiles(SCI)
    f=findfiles(SCI+'/modules/core/macros','*.sci')




See Also
~~~~~~~~


+ `listfiles`_ list of files


.. _listfiles: listfiles.html


