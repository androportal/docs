====
"listfiles"
====

Scilab Function Last update : April 1993
**listfiles** - list files



Calling Sequence
~~~~~~~~~~~~~~~~

files= listfiles(paths [,flag,flagexpand])




Parameters
~~~~~~~~~~


+ **paths** : a string matrix giving a set of pathnames (eventually
  ended by a pattern built with ***** )
+ **flag,flagexpand** : boolean optional parameters. (default value
  **%t** ).
+ **files** : a string matrix.




Description
~~~~~~~~~~~

**listfiles** can be used to list the files which match the patterns
given by one of the paths entries. Patterns are given to the unix
**ls** or to the windows **dir** commands in order to get information
on files. Thus in order to write portable Scilab script valid wildcard
patterns for both os are to be given. Note that Pathname conversion is
performed and for example **SCI/macros/util/*.sci** is a valid pattern
for both unix and windows.

if **flag** is true the pathnames given by **paths** are converted
according to the MSDOS value (See **pathconvert** ). Moreover, if
**flagexpand** is true leading strings like **HOME** , **SCI** or
**~** are expanded using environment variables.



Examples
~~~~~~~~


::

    
    
    files=listfiles(['SCI/macros/util/*.sci';'SCI/macros/util/*.bin']);
     
      




See Also
~~~~~~~~

` **basename** `_,` **pathconvert** `_,

.. _
      : ://./utilities/basename.htm
.. _
      : ://./utilities/pathconvert.htm


