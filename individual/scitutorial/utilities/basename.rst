====
"basename"
====

Scilab Function Last update : April 1993
**basename** - strip directory and suffix from filenames



Calling Sequence
~~~~~~~~~~~~~~~~

files= basename(files[,flag [,flagexpand]])




Parameters
~~~~~~~~~~


+ **files** : a string matrix giving a set of file names.
+ **flag,flagexpand** : boolean optional parameters. (default value
  **%t** ).
+ **files** : a string matrix.




Description
~~~~~~~~~~~

**basename** return the basename of the file entries given in files.

If **flag** is true the files are first converted to the target type
given by the **MSDOS** variable. Moreover, if **flagexpand** is true
leading strings like **HOME** , **SCI** or **~** are expanded using
environment variables.

Note that **basename(files,%f)** can give erroneous results if
pathnames given in files do not follow the convention given by the
**MSDOS** variable.



Examples
~~~~~~~~


::

    
    
    files=basename('SCI/macros/util/poo.sci')
    files=basename('SCI/macros\util/poo.sci')
    files=basename('SCI/macros\util/poo.sci.k')
     
      




See Also
~~~~~~~~

` **listfiles** `_,` **pathconvert** `_,

.. _
      : ://./utilities/listfiles.htm
.. _
      : ://./utilities/pathconvert.htm


