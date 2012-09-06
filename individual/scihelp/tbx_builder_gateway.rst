


tbx_builder_gateway
===================

Run builder_gateway.sce script if it exists (toolbox compilation
process)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    tbx_builder_gateway(toolbox_path)




Arguments
~~~~~~~~~

:toolbox_path Root directory of toolbox sources ; builder_gateway.sce
  script will be searched in the sci_gateway subdirectory of this
  directory.
:



Examples
~~~~~~~~


::

    // Recommended usage
    tbx_builder_gateway(`get_absolute_file_path`_('builder.sce'))




