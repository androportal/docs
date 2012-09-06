


pathconvert
===========

pathnames convertion between POSIX and windows.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    paths=pathconvert(paths [,flagtrail [,flagexpand [,type]]])




Arguments
~~~~~~~~~

:paths a string matrix giving a set of pathnames
: :flagtrail boolean optional parameters. Its default value is TRUE.
: :flagexpand boolean optional parameter. Its default value depends on
  the getos() == 'Windows' variable.
: :type a string `'u'` or `'w'`.
:



Description
~~~~~~~~~~~

`pathconvert` can be used to convert a set of pathnames (given by a
string matrix `paths`) from windows native filename to POSIX-style
pathnames and back. The target style is given by the optional string
`type` which can be `'u'` for Unix or `'w'` for Windows. The default
style is set according to the value of `getos() == 'Windows'`. If
`getos() == 'Windows'` is TRUE (resp. FALSE ) then default type is
`'w'` (resp. `'u'`).

Windows pathnames starting with `name:` are converted to pathnames
starting with `/cygdrive/name/` using the cygwin convention.

`flagtrail` is an optional boolean parameter. When its value is TRUE
(default value) a trailing separator ( `'\'` or `'/'`) is added at the
end of the path if it was missing. If `flagtrail` is set to FALSE, the
trailing separator is removed.

`flagexpand` is an optional boolean parameter. When its value is TRUE
leading strings like `HOME`, `SCI` or `~` are expanded using
environment variables.



Examples
~~~~~~~~


::

    pathconvert("SCI/modules/fileio\macros/foo.sci",%f,%f,"u")
    pathconvert("SCI/modules/fileio\macros/foo.sci",%f,%f,"w")
    pathconvert("SCI/modules/fileio/macros/foo.sci",%f,%t,"w")
    pathconvert("HOME/modules/fileio/macros/foo.sci",%t,%t,"w")
    pathconvert("c:/tmp",%f,%t,"u")
    pathconvert("/cygdrive/c/tmp",%f,%f,"w")




See Also
~~~~~~~~


+ `basename`_ strip directory and suffix from filenames
+ `listfiles`_ list of files


.. _listfiles: listfiles.html
.. _basename: basename.html


