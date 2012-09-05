


tbx_build_gateway_loader
========================

Generate a loader_gateway.sce script (toolbox compilation process)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    tbx_build_gateway_loader(langs)
    tbx_build_gateway_loader(langs, gateway_path)




Arguments
~~~~~~~~~

:langs Languages of source files.
: :gateway_path Path to the sources of the gateway ; in a normal
  toolbox it should be the directory containing the builder_gateway.sce
  script (which should be the script calling this function). Default is
  current directory.
:



Examples
~~~~~~~~


::

    // Recommended usage
    tbx_build_gateway_loader(['c', 'fortran'], `get_absolute_file_path`_('builder_gateway.sce'))




