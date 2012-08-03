====
"tk_getfile"
====

Scilab Function Last update : 02/11/2006
**tk_getfile** - dialog to get one or more file paths



Calling Sequence
~~~~~~~~~~~~~~~~

path=tk_getfile([Title="string"])
path=tk_getfile([multip="1"])
path=tk_getfile(file_mask[,Title="string"][,multip="1"])
path=tk_getfile(file_mask,dir[,Title="string"])
path=tk_getfile(file_mask,dir[,Title="string"][,multip="1"])
path=tk_getfile(file_mask,dir,"string"[,"multip"])




Parameters
~~~~~~~~~~


+ **file_mask** : a character string which gives the file mask to use
  for file selection. **file_mask** is written with Unix convention. The
  default value is '*'.
+ **dir** : a character string which gives the initial directory used
  for file search. By default tk_getfile uses the previously selected
  directory.
+ **path** : is the user selected file path(s) if user answers "Ok" or
  the " " string if user answers "Cancel".
+ **Title="string"** : Optional argument which gives the title for the
  tk_getfile window. **Warning** : use the variable name **Title**
  instead of **title.**
+ **multip** : Optional argument which allows to select more than one
  file at once in the tk_getfile window. If given, it must be the string
  "1". Otherwise, or if not given, this argument defaults to "0" i.e.
  only one file can be selected in the dialog.




Description
~~~~~~~~~~~

Creates a dialog window for file selection.



Examples
~~~~~~~~


::

    
    tk_getfile()
    tk_getfile("*.sci","SCI/macros/xdess")
    tk_getfile(Title="Choose a file name")
    tk_getfile(Title="Choose many file names at once",multip="1")
    tk_getfile(multip="1")




See Also
~~~~~~~~

` **xgetfile** `_,` **tk_getdir** `_,` **file** `_,` **fileinfo** `_,

.. _
      : ://./fileio/file.htm
.. _
      : ://./fileio/tk_getdir.htm
.. _
      : ://./fileio/fileinfo.htm
.. _
      : ://./fileio/xgetfile.htm


