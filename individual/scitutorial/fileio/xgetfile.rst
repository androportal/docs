====
"xgetfile"
====

Scilab Function Last update : Jan 1996
**xgetfile** - dialog to get a file path



Calling Sequence
~~~~~~~~~~~~~~~~

path=xgetfile([title='string'])
path=xgetfile(file_mask,[title='string'])
path=xgetfile(file_mask,dir,[title='string'])
path=xgetfile(file_mask,dir,'string')




Parameters
~~~~~~~~~~


+ **file_mask** : a character string which gives the file mask to use
  for file selection. **file_mask** is written with Unix convention. the
  default value is '*'.
+ **dir** : a character string which gives the initial directory used
  for file search. by default xgetfile uses the previously selected
  directory.
+ **path** : is the user selected file path if user answers "Ok" or
  the " " string if user answers "Cancel"
+ **title='string' ** :Optional arguments which gives the title for
  the xgetfile window.




Description
~~~~~~~~~~~

Creates a dialog window for file selection



Examples
~~~~~~~~


::

    
    
    xgetfile()
    xgetfile('*.sci','SCI/macros/xdess')
    xgetfile(title='Choose a file name ')
     
      




See Also
~~~~~~~~

` **x_dialog** `_,` **file** `_,` **read** `_,` **write** `_,`
**exec** `_,` **getf** `_,

.. _
      : ://./fileio/../gui/x_dialog.htm
.. _
      : ://./fileio/file.htm
.. _
      : ://./fileio/read.htm
.. _
      : ://./fileio/../programming/exec.htm
.. _
      : ://./fileio/write.htm
.. _
      : ://./fileio/../functions/getf.htm


