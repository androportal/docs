


fileext
=======

returns extension for a file path



Calling Sequence
~~~~~~~~~~~~~~~~


::

    extension = fileext(fullpath)




Arguments
~~~~~~~~~

:fullpath a string matrix, the given file path
: :extension a string matrix, the extension part is any or ''
:



Description
~~~~~~~~~~~

`extension=fileext(`fullpath`_)` splits the fullpath character string
in the extension part including the dot.



Examples
~~~~~~~~


::

    extension = fileext('SCI/etc/scilab.start')
    extension = fileext(['SCI/etc/scilab.start';'SCI/etc/scilab.quit'])




See Also
~~~~~~~~


+ `fileparts`_ returns the path, filename and extension for a file
  path


.. _fullpath: fullpath.html
.. _fileparts: fileparts.html


