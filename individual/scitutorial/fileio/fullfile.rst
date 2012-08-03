====
"fullfile"
====

Scilab Function Last update : 28/07/2004
**fullfile** - Build a full filename from parts



Calling Sequence
~~~~~~~~~~~~~~~~

f = fullfile(varargin)




Parameters
~~~~~~~~~~


+ **varargin** : all directories and filename used to build the full
  filename (at least one directory and filename)
+ **f** : full filename




Description
~~~~~~~~~~~

**f = fullfile(varargin)** builds a full filename taking care of
platform on which it is run and handling the cases when the
directories begin or end with a directory separator.



Examples
~~~~~~~~


::

    
    
       f=fullfile("/home/","\scilab","macros","\util","fullfile.sci")
       f=fullfile("C:","\scilab","macros","\util","fullfile.sci")
      
      




See Also
~~~~~~~~

` **pathconvert** `_,` **fileparts** `_,



Authors
~~~~~~~

****V.C.


.. _
      : ://./fileio/fileparts.htm
.. _
      : ://./fileio/../utilities/pathconvert.htm


