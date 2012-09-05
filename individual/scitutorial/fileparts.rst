


fileparts
=========

returns the path, filename and extension for a file path



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [path,fname,extension]=fileparts(fullpath)
    value=fileparts(fullpath,sel)




Arguments
~~~~~~~~~

:fullpath a character string, the given file path.
: :sel a optional character string selector, with possible values:
  `'path'`, `'fname'` or `'extension'`.
: :path a character string, the path of the directory pointed to by
  `fullpath`.
: :fname a character string, the filename part is any or `''`.
: :extension a character string, the extension part is any or `''`.
: :value a character string, depending on `sel` value.
:



Description
~~~~~~~~~~~

`[path,fname,extension]=fileparts(`fullpath`_)` splits the `fullpath`
character string in its three parts: the path of the directory pointed
to, the filename part, the extension part including the dot.



Examples
~~~~~~~~


::

    [path,fname,extension]=fileparts('SCI/etc/scilab.start')
    fileparts('SCI/etc/scilab.start','extension')




See Also
~~~~~~~~


+ `pathconvert`_ pathnames convertion between POSIX and windows.
+ `basename`_ strip directory and suffix from filenames
+ `fullfile`_ builds a full filename from parts


.. _pathconvert: pathconvert.html
.. _basename: basename.html
.. _fullpath: fullpath.html
.. _fullfile: fullfile.html


