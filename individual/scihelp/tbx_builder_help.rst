


tbx_builder_help
================

Run builder_help.sce script if it exists (toolbox compilation process)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    tbx_builder_help(toolbox_path)




Arguments
~~~~~~~~~

:toolbox_path Root directory of toolbox sources ; builder_help.sce
  script will be searched in the help subdirectory of this directory.
:



Examples
~~~~~~~~


::

    // Recommended usage
    tbx_builder_help(`get_absolute_file_path`_('builder.sce'))




See Also
~~~~~~~~


+ `tbx_builder_help_lang`_ Run build_help.sce script if it exists
  (toolbox compilation process)
+ `tbx_build_help_loader`_ Generate an addchapter.sce script (toolbox
  compilation process)
+ `tbx_build_help`_ Generate help files (toolbox compilation process)


.. _tbx_builder_help_lang: tbx_builder_help_lang.html
.. _tbx_build_help: tbx_build_help.html
.. _tbx_build_help_loader: tbx_build_help_loader.html


