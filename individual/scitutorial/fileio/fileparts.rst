====
"fileparts"
====

Scilab Function Last update : 13/01/2005
**fileparts** - returns the path, filename and extension for a file
path



Calling Sequence
~~~~~~~~~~~~~~~~

[path,fname,extension]=fileparts(fullpath)
v=fileparts(fullpath,sel)




Parameters
~~~~~~~~~~


+ **fullpath** : a character string, the given file path
+ **sel** : a optional character string selector, with posible values:
  'path' 'fname' or 'extension'
+ **path** : a character string, the path of the directory pointed to
  by fullpath
+ **fname** : a character string, the filename part is any or ''
+ **extension** : a character string, the extension part is any or ''
+ **value** : a character string, depending on sel value




Description
~~~~~~~~~~~

**[path,fname,extension]=fileparts(fullpath)** splits the fullpath
character string in its three parts: the path of the directory pointed
to, the filename part, the extension part including the dot.



Examples
~~~~~~~~


::

    
    
       [path,fname,extension]=fileparts('SCI/scilab.star')
       fileparts('SCI/scilab.star','extension')
      
      




See Also
~~~~~~~~

` **pathconvert** `_,` **basename** `_,` **fullfile** `_,



Author
~~~~~~

Serge Steer, INRIA

.. _
      : ://./fileio/fullfile.htm
.. _
      : ://./fileio/../utilities/pathconvert.htm
.. _
      : ://./fileio/../utilities/basename.htm


