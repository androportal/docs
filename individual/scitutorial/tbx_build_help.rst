


tbx_build_help
==============

Generate help files (toolbox compilation process)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    tbx_build_help(title)
    tbx_build_help(title, help_path)




Arguments
~~~~~~~~~

:title Title of the chapter.
: :help_path Directory where the files will be generated ; in a normal
  toolbox it should be the directory containing the build_help.sce
  script (which should be the script calling this function). Default is
  current directory.
:



Remark:
~~~~~~~

If you call `tbx_build_help` in scilab CLI (=NWNI) mode, help files
will not be generated.



Examples
~~~~~~~~


::

    // Recommended usage
    tbx_build_help("Toolbox Example", `get_absolute_file_path`_('build_help.sce'))




See Also
~~~~~~~~


+ `tbx_builder_help_lang`_ Run build_help.sce script if it exists
  (toolbox compilation process)
+ `tbx_build_help_loader`_ Generate an addchapter.sce script (toolbox
  compilation process)
+ `tbx_builder_help`_ Run builder_help.sce script if it exists
  (toolbox compilation process)


.. _tbx_builder_help_lang: tbx_builder_help_lang.html
.. _tbx_builder_help: tbx_builder_help.html
.. _tbx_build_help_loader: tbx_build_help_loader.html


