====
"tk_getdir"
====

Scilab Function Last update : Jan 1996
**tk_getdir** - dialog to get a directory path



Calling Sequence
~~~~~~~~~~~~~~~~

path=tk_getdir([title='string'])
path=tk_getdir([title='string'])
path=tk_getdir(dir,[title='string'])
path=tk_getdir(dir,'string')




Parameters
~~~~~~~~~~


+ **dir** : a character string which gives the initial directory used
  for directory search. by default tk_getdir uses the previously
  selected directory.
+ **path** : is the user selected file path if user answers "Ok" or
  the " " string if user answers "Cancel"
+ **title='string' ** :Optional argument which gives the title for the
  tk_getdir window.




Description
~~~~~~~~~~~

Creates a dialog window for file selection



Examples
~~~~~~~~


::

    
    
    tk_getdir()
    tk_getdir('SCI/macros/xdess')
    tk_getdir(title='Choose a directory name ')
     
      




See Also
~~~~~~~~

` **tk_getfile** `_,` **file** `_,` **fileinfo** `_,

.. _
      : ://./fileio/file.htm
.. _
      : ://./fileio/tk_getfile.htm
.. _
      : ://./fileio/fileinfo.htm


