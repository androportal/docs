


basename
========

strip directory and suffix from filenames



Calling Sequence
~~~~~~~~~~~~~~~~


::

    processedfiles = basename(files[,flag [,flagexpand]])




Arguments
~~~~~~~~~

:files a string matrix giving a set of file names.
: :flag, flagexpand boolean optional parameters. Default value is
  `%t`.
: :processedFiles a string matrix containing the processed filenames.
:



Description
~~~~~~~~~~~

`basename(files)` returns the basename of the file entries given in
`files`.

If `flag` is true the files are first converted to the target type
given by the ``getos`_() == 'Windows'` variable. Moreover, if
`flagexpand` is true leading strings like `SCIHOME`, `SCI` or `~` are
expanded using environment variables.



Examples
~~~~~~~~


::

    files=basename('SCI/modules/fileio/macros/poo.sci')
    files=basename('SCI/modules\fileio/macros/poo.sci')
    files=basename('SCI/modules\fileio/macros/poo.sci.k')




See Also
~~~~~~~~


+ `listfiles`_ list of files
+ `pathconvert`_ pathnames convertion between POSIX and windows.
+ `fileparts`_ returns the path, filename and extension for a file
  path


.. _listfiles: listfiles.html
.. _pathconvert: pathconvert.html
.. _getos: getos.html
.. _fileparts: fileparts.html


