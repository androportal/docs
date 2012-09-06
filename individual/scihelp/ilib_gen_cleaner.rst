


ilib_gen_cleaner
================

utility for ilib_build: generates a cleaner file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ilib_gen_cleaner(makename,[loadername],[files])




Arguments
~~~~~~~~~

:makename character string. The pathname of the Makefile file without
  extension (default value `''`). This parameter is useless since Scilab
  5.0. A warning will be displayed in Scilab 5.3 if you use another
  value that the default.
: :loadername character string. The pathname of the loader file
  (default value is `loader.sce`).
: :files matrix of character string. files to delete.
:



Description
~~~~~~~~~~~

This is internal function used by `ilib_build and ilib_for_link` This
function generates a cleaner file.

**Only use this function is you know what you are doing (it is a semi-
private function).**



See Also
~~~~~~~~


+ `ilib_gen_loader`_ utility for ilib_build: generates a loader file
+ `ilib_build`_ utility for shared library management
+ `ilib_for_link`_ utility for shared library management with link
+ `api_scilab`_ api_scilab is the Scilab interface to read/write data
  from/to Scilab memory


.. _ilib_for_link: ilib_for_link.html
.. _ilib_build: ilib_build.html
.. _ilib_gen_loader: ilib_gen_loader.html
.. _api_scilab: api_scilab.html


