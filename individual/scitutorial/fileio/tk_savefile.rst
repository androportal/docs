====
"tk_savefile"
====

Scilab Function Last update : 02/11/2006
**tk_savefile** - dialog to get a file path for writing



Calling Sequence
~~~~~~~~~~~~~~~~

path=tk_savefile([Title='string'])
path=tk_savefile(file_mask,[Title='string'])
path=tk_savefile(file_mask,dir,[Title='string'])
path=tk_savefile(file_mask,dir,'string')




Parameters
~~~~~~~~~~


+ **file_mask** : a character string which gives the file mask to use
  for file selection. **file_mask** is written with Unix convention. the
  default value is '*'.
+ **dir** : a character string which gives the initial directory used
  for file search. by default tk_savefile uses the previously selected
  directory.
+ **path** : is the user selected file path if user answers "Ok" or
  the " " string if user answers "Cancel"
+ **Title='string'** :Optional arguments which gives the title for the
  tk_savefile window. **Warning** : use the variable name **Title**
  instead of **title** .




Description
~~~~~~~~~~~

Creates a dialog window for output file selection



Examples
~~~~~~~~


::

    
    
    tk_savefile()
    tk_savefile('*.sci','SCI/macros/xdess')
    tk_savefile(Title='Choose a file name ')
     
      




See Also
~~~~~~~~

` **xgetfile** `_,` **tk_getdir** `_,` **tk_getfile** `_,` **file**
`_,` **fileinfo** `_,

.. _
      : ://./fileio/tk_getdir.htm
.. _
      : ://./fileio/file.htm
.. _
      : ://./fileio/fileinfo.htm
.. _
      : ://./fileio/tk_getfile.htm
.. _
      : ://./fileio/xgetfile.htm


