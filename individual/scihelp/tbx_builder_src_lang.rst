


tbx_builder_src_lang
====================

Run builder_(language).sce script if it exists (toolbox compilation
process)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    tbx_builder_src_lang(lang)
    tbx_builder_src_lang(lang, src_path)




Arguments
~~~~~~~~~

:lang Language of sources files ; the builder_(lang).sce script will
  be searched in the subdirectory lang (e.g. fortran) of the src_path
  directory.
: :src_path Path to the sources ; in a normal toolbox it should be the
  directory containing the builder_src.sce script (which should be the
  script calling this function). Default is current directory.
:



Examples
~~~~~~~~


::

    // Recommended usage
    tbx_builder_src_lang("fortran", `get_absolute_file_path`_('builder_src.sce'))




