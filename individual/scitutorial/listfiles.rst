


listfiles
=========

list of files



Calling Sequence
~~~~~~~~~~~~~~~~


::

    files = listfiles(paths [, flag, flagexpand])




Arguments
~~~~~~~~~

:paths a string matrix giving a set of pathnames (eventually ended by
  a pattern built with `*`).
: :flag, flagexpand boolean optional parameters (default value is
  `%t`).
: :files a string matrix.
:



Description
~~~~~~~~~~~

`listfiles` can be used to list the files which match the patterns
given by one of the paths entries. Patterns are given to the Unix `ls`
or to the Windows `dir` commands in order to get information about
files. Thus in order to write portable Scilab script valid wildcard
patterns for both OS are to be given. Note that pathname conversion is
performed and for example `SCI/core/macros/*.sci` is a valid pattern
for both Unix and Windows.

If `flag` is true the pathnames given by `paths` are converted
according to the ``getos`_() == 'Windows'` value (see also
`pathconvert`_). Moreover, if `flagexpand` is true leading strings
like `SCIHOME`, `SCI` or `~` are expanded using environment variables.

If the input argument `paths` is the name of a directory, the returned
`files` are the names relative to that directory.

If the input argument `paths` contains more than one element, or if it
contains a pattern (e.g. `"/*"`, `"*.c"`), the returned `files` are
the absolute paths (i.e. file name prepended with the name of the
directory).



Examples
~~~~~~~~


::

    files=listfiles(['SCI/modules/core/macros/*.sci';'SCI/modules/core/macros/*.bin']);




History
~~~~~~~
Version Description 5.4.0 If paths is not a single string, all
returned files are homogenized with the absolute path form.


See Also
~~~~~~~~


+ `findfiles`_ finding all files with a given file specification
+ `basename`_ strip directory and suffix from filenames
+ `pathconvert`_ pathnames convertion between POSIX and windows.


.. _findfiles: findfiles.html
.. _pathconvert: pathconvert.html
.. _getos: getos.html
.. _basename: basename.html


