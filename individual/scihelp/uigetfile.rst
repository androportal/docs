


uigetfile
=========

dialog window to get a file(s) name(s), path and filter index



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [FileName[,PathName[,FilterIndex]]]=uigetfile([file_mask[,dir[,boxTitle[,multipleSelection]]]])
    PathFileName=uigetfile([file_mask[,dir[,boxTitle[,multiple]]]])




Input parameters
~~~~~~~~~~~~~~~~

:file_mask a string matrix which gives the file masks to use for file
  selection. `file_mask` is written with Unix convention. The default
  value is '*'. we can also add descriptions for masks, for example
  ["*.x*","X files";"*.bin","BIN files"].
: :dir a character string which gives the initial directory used for
  file search. By default uigetfile uses the previously selected
  directory.
: :boxTitle a character string which gives the title of the uigetfile
  window. By default uigetfile's title is 'uigetfile'.
: :multipleSelection a boolean which allows to load only one file if
  it is at '%f' (false) or multiple files if it is at '%t" (true). By
  default uigetfile's multiple file selection is not enable.
:



Output parameters
~~~~~~~~~~~~~~~~~

:FileName matrix of string which give the user selected file(s) (path
  + file(s) name(s)) if user answers "Ok" or the " " string if user
  answers "Cancel".
: :PathName is the user selected file(s) path if user answers "Ok" or
  the " " string if user answers "Cancel".
: :FilterIndex is the user selected filter index on the list box if
  user answers "Ok" or '0' string if user answers "Cancel"
:



Description
~~~~~~~~~~~

Creates a dialog window for file(s) selection.



Comments
~~~~~~~~

On Windows, java component used by uigetfile browse also .zip archive
then it is very slow with big .zip files.

To disable, this feature:

if getos() == 'Windows' then unix("REGSVR32 /u
%WINDIR%\System32\zipfldr.dll") ;end

To re-enable,

if getos() == 'Windows' then unix("REGSVR32
%WINDIR%\System32\zipfldr.dll") ;end



Examples
~~~~~~~~


::

    uigetfile(["*.bin";"*.sce";"*.cos*"])
          uigetfile(["*.sci";"*.bin"],"SCI/modules/gui/macros/")
          uigetfile(["*.sc*";"*.bin"],"SCI/modules/gui/macros/")
          uigetfile(["*.x*","X files";"*.bin","BIN files"],"SCI/modules/gui/macros/")
          uigetfile(["*.sce";"*.bin"],"SCI/modules/gui/macros/", "Choose a file name", %t); 
          uigetfile(["*.sce";"*.bin"],"SCI/modules/gui/macros/", "Choose a file name", %f);




See Also
~~~~~~~~


+ `uiputfile`_ Open standard dialog box for selecting and saving file.
+ `uigetdir`_ dialog for selecting a directory
+ `x_dialog`_ Dialog for interactive multi-lines input.
+ `file`_ file management
+ `read`_ matrices read
+ `write`_ write in a formatted file
+ `exec`_ script file execution


.. _write: write.html
.. _exec: exec.html
.. _read: read.html
.. _x_dialog: x_dialog.html
.. _uiputfile: uiputfile.html
.. _uigetdir: uigetdir.html
.. _file: file.html


