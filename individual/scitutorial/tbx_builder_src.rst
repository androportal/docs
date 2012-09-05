


tbx_builder_src
===============

Run builder_src.sce script if it exists (toolbox compilation process)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    tbx_builder_src(toolbox_path)




Arguments
~~~~~~~~~

:toolbox_path Root directory of toolbox sources ; builder_src.sce
  script will be searched in the src subdirectory of this directory.
:



Examples
~~~~~~~~


::

    // Recommended usage
    tbx_builder_src(`get_absolute_file_path`_('builder.sce'))




