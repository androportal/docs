====
"isdir"
====

Scilab Function Last update : 2001
**isdir** - checks if argument is a directory path



Calling Sequence
~~~~~~~~~~~~~~~~

r=isdir(path)




Parameters
~~~~~~~~~~


+ **path** : a character string, the file pathname
+ **r** : a boolean, true if **path** is a path to a directory.




Description
~~~~~~~~~~~

**r=isdir(path)** checks if **path** is a path to a directory.



Reference
~~~~~~~~~

This function is based on the C function stat. The **SCI** and **~**
shortcuts for Scilab directory and home directory are handled.



Examples
~~~~~~~~


::

    
    
    isdir(TMPDIR)
    isdir SCI/scilab.star
     
      




See Also
~~~~~~~~

` **fileinfo** `_,



Author
~~~~~~

S. Steer INRIA

.. _
      : ://./fileio/fileinfo.htm


