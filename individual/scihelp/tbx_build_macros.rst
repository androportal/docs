


tbx_build_macros
================

Compile macros (toolbox compilation process)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    tbx_build_macros(toolbox_name)
    tbx_build_macros(toolbox_name, macros_path)




Arguments
~~~~~~~~~

:toolbox_name Toolbox short name ; that is, the prefix of the .start
  file of the toolbox (which shall be in the etc subdirectory).
: :macros_path Directory where the macros files can be found and where
  the compiled macros will be placed into ; in a normal toolbox it
  should be the directory containing the buildmacros.sce script (which
  should be the script calling this function). Default is current
  directory.
:



Examples
~~~~~~~~


::

    // Recommended usage
    tbx_build_macros("toolbox_example", `get_absolute_file_path`_('buildmacros.sce'))




