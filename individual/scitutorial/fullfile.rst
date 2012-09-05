


fullfile
========

builds a full filename from parts



Calling Sequence
~~~~~~~~~~~~~~~~


::

    f = fullfile(varargin)




Arguments
~~~~~~~~~

:varargin character strings, all directories and filename used to
  build the full filename (at least one directory and filename).
: :f a character string or matrix of strings, full filename.
:



Description
~~~~~~~~~~~

`f= fullfile(varargin)` builds a full filename taking care of platform
on which it is run and handling the cases when the directories begin
or end with a directory separator.



Examples
~~~~~~~~


::

    f = fullfile("/home/", "\scilab", "macros", "\util", "fullfile.sci")
    f = fullfile("C:", "\scilab", "macros", "\util", "fullfile.sci")
    r = fullfile("/home/","\scilab","macros","\util", ["fullfile.sci"; "toto.sci"])




See Also
~~~~~~~~


+ `pathconvert`_ pathnames convertion between POSIX and windows.
+ `fileparts`_ returns the path, filename and extension for a file
  path


.. _pathconvert: pathconvert.html
.. _fileparts: fileparts.html


