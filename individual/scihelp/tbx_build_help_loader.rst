


tbx_build_help_loader
=====================

Generate an addchapter.sce script (toolbox compilation process)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    tbx_build_help_loader(title)
    tbx_build_help_loader(title, help_path)




Arguments
~~~~~~~~~

:title Title of the chapter.
: :help_path Directory where the script will be generated ; in a
  normal toolbox it should be the directory containing the
  build_help.sce script (which should be the script calling this
  function). Default is current directory.
:



Examples
~~~~~~~~


::

    // Recommended usage
    tbx_build_help_loader("Toolbox Example", `get_absolute_file_path`_('build_help.sce'))




See Also
~~~~~~~~


+ `tbx_builder_help_lang`_ Run build_help.sce script if it exists
  (toolbox compilation process)
+ `tbx_builder_help`_ Run builder_help.sce script if it exists
  (toolbox compilation process)
+ `tbx_build_help`_ Generate help files (toolbox compilation process)


.. _tbx_builder_help_lang: tbx_builder_help_lang.html
.. _tbx_build_help: tbx_build_help.html
.. _tbx_builder_help: tbx_builder_help.html


