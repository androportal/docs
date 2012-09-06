


dirname
=======

gets directory from filenames



Calling Sequence
~~~~~~~~~~~~~~~~


::

    dirs = dirname(files[,flag [,flagexpand]])




Arguments
~~~~~~~~~

:files a string matrix giving a set of file names
: :flag, flagexpand boolean optional parameters (default value `%t`)
: :files, dirs string matrices
:



Description
~~~~~~~~~~~

`dirname` returns the directory names of the file entries given in
`files`.

If `flag` is true the files are first converted to the target type
given by the ``getos`_() == 'Windows'` variable. Moreover, if
`flagexpand` is true leading strings like `SCIHOME`, `SCI` or `~` are
expanded using environment variables.

Note that `dirname(files,%f)` can give erroneous results if pathnames
given in `files` do not follow the convention given by the ``getos`_()
== 'Windows'` variable.



Examples
~~~~~~~~


::

    dirs=dirname('SCI/modules/fileio/macros/poo.sci')
    dirs=dirname('SCI/modules\fileio/macros/poo.sci')
    dirs=dirname('SCI/modules\fileio/macros/poo.sci.k')




See Also
~~~~~~~~


+ `basename`_ strip directory and suffix from filenames
+ `listfiles`_ list of files
+ `pathconvert`_ pathnames convertion between POSIX and windows.


.. _listfiles: listfiles.html
.. _pathconvert: pathconvert.html
.. _getos: getos.html
.. _basename: basename.html


