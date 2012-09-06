


uigetdir
========

dialog for selecting a directory



Calling Sequence
~~~~~~~~~~~~~~~~


::

    directory = uigetdir()
    directory = uigetdir(start_path [,title])




Arguments
~~~~~~~~~

:start_path a character string which gives the initial directory used
  for search. By default uigetdir uses current working directory.
: :title the title for the uigetdir window.
: :directory is the user selected directory if user answers "Ok" or
  the " " string if user cancels.
:



Description
~~~~~~~~~~~

Creates a dialog window for selecting a directory



Examples
~~~~~~~~


::

    uigetdir()
    uigetdir("SCI/modules/")
    uigetdir("SCI/modules/", "Choose a directory")




See Also
~~~~~~~~


+ `uigetfile`_ dialog window to get a file(s) name(s), path and filter
  index
+ `uiputfile`_ Open standard dialog box for selecting and saving file.


.. _uiputfile: uiputfile.html
.. _uigetfile: uigetfile.html


