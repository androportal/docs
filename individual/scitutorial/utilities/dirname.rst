====
"dirname"
====

Scilab Function Last update : April 1993
**dirname** - get directory from filenames



Calling Sequence
~~~~~~~~~~~~~~~~

dirs= dirname(files[,flag [,flagexpand]])




Parameters
~~~~~~~~~~


+ **files** : a string matrix giving a set of file names.
+ **flag,flagexpand** : boolean optional parameters. (default value
  **%t** ).
+ **files,dir** : string matrices.




Description
~~~~~~~~~~~

**dirname** return the dirname of the file entries given in files.

If **flag** is true the files are first converted to the target type
given by the **MSDOS** variable. Moreover, if **flagexpand** is true
leading strings like **HOME** , **SCI** or **~** are expanded using
environment variables.

Note that **dirname(files,%f)** can give erroneous results if
pathnames given in files do not follow the convention given by the
**MSDOS** variable.



Examples
~~~~~~~~


::

    
    
    files=dirname('SCI/macros/util/poo.sci')
    files=dirname('SCI/macros\util/poo.sci')
    files=dirname('SCI/macros\util/poo.sci.k')
     
      




See Also
~~~~~~~~

` **basename** `_,` **listfiles** `_,` **pathconvert** `_,

.. _
      : ://./utilities/basename.htm
.. _
      : ://./utilities/listfiles.htm
.. _
      : ://./utilities/pathconvert.htm


