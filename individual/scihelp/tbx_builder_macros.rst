


tbx_builder_macros
==================

Run buildmacros.sce script if it exists (toolbox compilation process)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    tbx_builder_macros(toolbox_path)




Arguments
~~~~~~~~~

:toolbox_path Root directory of toolbox sources ; buildmacros.sce
  script will be searched in the macros subdirectory of this directory.
:



Examples
~~~~~~~~


::

    // Recommended usage
    tbx_builder_macros(`get_absolute_file_path`_('builder.sce'))




