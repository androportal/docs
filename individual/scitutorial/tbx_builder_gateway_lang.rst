


tbx_builder_gateway_lang
========================

Run builder_gateway_(language).sce script if it exists (toolbox
compilation process)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    tbx_builder_gateway_lang(lang)
    tbx_builder_gateway_lang(lang, gw_path)




Arguments
~~~~~~~~~

:lang Language of sources files ; the builder_gateway_(lang).sce
  script will be searched in the subdirectory lang (e.g. fortran) of the
  gw_path directory.
: :gw_path Path to the sources of the gateway ; in a normal toolbox it
  should be the directory containing the builder_gateway.sce script
  (which should be the script calling this function). Default is current
  directory.
:



Examples
~~~~~~~~


::

    // Recommended usage
    tbx_builder_gateway_lang("fortran", `get_absolute_file_path`_('builder_gateway.sce'))




