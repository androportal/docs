====
"newest"
====

Scilab Function Last update : July 2000
**newest** - returns newest file of a set of files



Calling Sequence
~~~~~~~~~~~~~~~~

k=newest(paths)
k=newest(path1,path2,...,pathn)




Parameters
~~~~~~~~~~


+ **k** : the index of the newest file
+ **paths** : a character string vector (or list), paths(i) is the
  pathname of ith file
+ **pathi** : a character string, the pathname of ith file




Description
~~~~~~~~~~~

Given a set of pathnames newest returns the index of the newest one.
Non existant files are supposed to be the oldest.



Examples
~~~~~~~~


::

    
    
    newest('SCI/macros/xdess/bode.sci','SCI/macros/xdess/bode.bin')
    newest('SCI/macros/xdess/bode.'+['sci','bin'])
     
      




See Also
~~~~~~~~

` **fileinfo** `_,

.. _
      : ://./fileio/fileinfo.htm


