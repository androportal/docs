


ilib_include_flag
=================

Return a formated includes related string to pass to system compiler



Call Sequence
~~~~~~~~~~~~~


::

    compiler_flag = ilib_include_flag(path_strings)




Arguments
~~~~~~~~~

:path_strings Vector of relative or absolute path as string.
: :compiler_flag Compiler flag as string
:



Description
~~~~~~~~~~~

This function is an utility function provided to handle several
includes path. The result can be passed to tbx_build_gateway.



Exemples
~~~~~~~~


::

    includes_path = ["../src/includes";"/usr/include/somelib/includes";"."];
    includes_src_c = ilib_include_flag(includes_path);
    
    `ilib_build`_('somelib',['myfun',sci_myfun'],['myfile.c'],[],[],includes_src_c);




See Also
~~~~~~~~


+ `tbx_build_gateway`_ `ilib_build`_


.. _ilib_build: ilib_build.html
.. _tbx_build_gateway: tbx_build_gateway.html


