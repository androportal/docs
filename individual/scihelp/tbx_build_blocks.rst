


tbx_build_blocks
================

Compile blocks (toolbox compilation process)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    tbx_build_blocks(toolbox_name, block_names [, macros_path])




Arguments
~~~~~~~~~

:toolbox_name Toolbox short name ; that is, the prefix of the .start
  file of the toolbox (which shall be in the etc subdirectory).
: :block_names Block interface function list (in a string vector) ;
  all name should have a corresponding interface function macro (on the
  macros subdirectory).
: :macros_path Path to the blocks interface functions ; optional path
  which allow complex directory structure for interface functions.
:



Examples
~~~~~~~~


::

    // Recommended usage
    tbx_build_blocks("toolbox_example", ["EXAMPLE_BLOCK"])



::

    // Advanced usage for macros located into macros/integer and macros/double
    tbx_build_blocks("toolbox_example", ["INT_FUNCTION"], "integer");
    tbx_build_blocks("toolbox_example", ["DOUBLE_FUNCTION"], "double");




