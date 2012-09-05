


tbx_builder_help_lang
=====================

Run build_help.sce script if it exists (toolbox compilation process)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    tbx_builder_help_lang(lang)
    tbx_builder_help_lang(lang, help_path)




Arguments
~~~~~~~~~

:lang Language of help files to use ; the build_help.sce script will
  be searched in the subdirectory lang (e.g. en_US) of the help_path
  directory
: :help_path Path to help directory ; in a normal toolbox it should be
  the directory containing the builder_help.sce script (which should be
  the script calling this function). Default is current directory.
:



Examples
~~~~~~~~


::

    // Recommended usage
    tbx_builder_help_lang("en_US", `get_absolute_file_path`_('builder_help.sce'))




See Also
~~~~~~~~


+ `tbx_builder_help`_ Run builder_help.sce script if it exists
  (toolbox compilation process)
+ `tbx_build_help_loader`_ Generate an addchapter.sce script (toolbox
  compilation process)
+ `tbx_build_help`_ Generate help files (toolbox compilation process)


.. _tbx_build_help: tbx_build_help.html
.. _tbx_builder_help: tbx_builder_help.html
.. _tbx_build_help_loader: tbx_build_help_loader.html


