


newest
======

returns newest file of a set of files



Calling Sequence
~~~~~~~~~~~~~~~~


::

    k=newest(paths)
    k=newest(path1,path2,...,pathn)




Arguments
~~~~~~~~~

:k the index of the newest file
: :paths a character string vector, paths(i) is the pathname of ith
  file
: :pathi a character string, the pathname of ith file
:



Description
~~~~~~~~~~~

Given a set of pathnames newest returns the index of the newest one.
Non existant files are supposed to be the oldest.



Examples
~~~~~~~~


::

    newest('SCI/modules/graphics/macros/bode.sci','SCI/modules/graphics/macros/bode.bin')
    newest(['SCI/modules/graphics/macros/bode.sci','SCI/modules/graphics/macros/bode.bin'])
    newest('SCI/modules/graphics/macros/bode.'+['sci','bin'])




See Also
~~~~~~~~


+ `fileinfo`_ provides information about a file


.. _fileinfo: fileinfo.html


