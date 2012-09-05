


uiputfile
=========

Open standard dialog box for selecting and saving file.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [FileName[,PathName[,FilterIndex]]]=uiputfile([file_mask[,dir[,boxTitle]]])
    PathFileName=uiputfile([file_mask[,dir[,boxTitle]]])




Input parameters
~~~~~~~~~~~~~~~~

:file_mask a string matrix which gives the file masks to use for file
  selection. `file_mask` is written with Unix convention. The default
  value is '*'. we can also add descriptions for masks, for example
  ["*.x*","X files";"*.bin","BIN files"].
: :dir a character string which gives the initial directory used for
  file search. By default uiputfile uses the previously selected
  directory.
: :boxTitle a character string which gives the title of the uiputfile
  window. By default uiputfile's title is 'uiputfile'.
:



Output parameters
~~~~~~~~~~~~~~~~~

:FileName string which give the user selected file (path + file name)
  if user answers "Ok" or the " " string if user answers "Cancel".
: :PathName is the user selected file path if user answers "Ok" or the
  " " string if user answers "Cancel".
: :FilterIndex is the user selected filter index on the list box if
  user answers "Ok" or '0' string if user answers "Cancel"
:



Description
~~~~~~~~~~~

Creates a dialog window for file saving.



Examples
~~~~~~~~


::

    uiputfile(["*.bin";"*.sce";"*.cos*"])
    uiputfile(["*.sci";"*.bin"],"SCI/modules/gui/macros/")
    uiputfile(["*.sc*";"*.bin"],"SCI/modules/gui/macros/")
    uiputfile(["*.x*","X files";"*.bin","BIN files"],"SCI/modules/gui/macros/")
    uiputfile(["*.sce";"*.bin"],"SCI/modules/gui/macros/", "Choose a file name");




See Also
~~~~~~~~


+ `uigetfile`_ dialog window to get a file(s) name(s), path and filter
  index
+ `uigetdir`_ dialog for selecting a directory


.. _uigetdir: uigetdir.html
.. _uigetfile: uigetfile.html


