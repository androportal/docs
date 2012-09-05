


tbx_build_loader
================

Generate loader.sce and unloader scripts (toolbox compilation process)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    tbx_build_loader(toolbox_name)
    tbx_build_loader(toolbox_name, toolbox_path)




Arguments
~~~~~~~~~

:toolbox_name Toolbox short name ; that is, the prefix of the .start
  file of the toolbox (which shall be in the etc subdirectory).
: :toolbox_path Root directory of toolbox sources ; the script will be
  generated here (default: current directory).
:



Examples
~~~~~~~~


::

    // Recommended usage
    tbx_build_loader("mytoolbox", `get_absolute_file_path`_('builder.sce'))




History
~~~~~~~
Version Description 5.4.0 This function generates also an unloader.sce
script


