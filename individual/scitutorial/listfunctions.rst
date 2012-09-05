


listfunctions
=============

properties of all functions in the workspace



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [flist,compiled,profilable,called] = listfunctions([scope])




Arguments
~~~~~~~~~

:scope string, "local" (default) or "global"
: :flist string array, names of all the function variables in the
  specified namespace
: :compiled boolean array, true if the corresponding element of flist
  is of type=13
: :profilable boolean array, true if the corresponding element of
  flist is of type=13, and additionally profiling information is found
  in the pseudocode of the function
: :called uint32 array, number of times the corresponding element of
  flist has been already called (nonzero only for profilable functions)
:



Description
~~~~~~~~~~~


+ This function checks all the variables in the workspace (given by
  `who`_) and collects those of type 11 or 13; for the latter,
  lst=`macr2lst`_(fun) is called, in order to check for the magic
  profiling entry at the end of the first codeline, i.e.
  lst(5)(1)=="25".




Examples
~~~~~~~~


::

    `recompilefunction`_("asinh","p")
    [flist,compiled,profilable,called] = listfunctions();
    flist(profilable)




See Also
~~~~~~~~


+ `function`_ opens a function definition
+ `exec`_ script file execution
+ `deff`_ on-line definition of function
+ `comp`_ scilab function compilation
+ `fun2string`_ generates ascii definition of a scilab function
+ `profile`_ extract execution profiles of a Scilab function
+ `recompilefunction`_ recompiles a scilab function, changing its type




Bibliography
~~~~~~~~~~~~

`http://wiki.scilab.org/Scilab_function_variables%3A_representation%2C
_manipulation`_

.. _exec: exec.html
.. _profile: profile.html
.. _http://wiki.scilab.org/Scilab_function_variables%3A_representation%2C_manipulation: http://wiki.scilab.org/Scilab_function_variables%3A_representation%2C_manipulation
.. _function: function.html
.. _who: who.html
.. _macr2lst: macr2lst.html
.. _comp: comp.html
.. _fun2string: fun2string.html
.. _deff: deff.html
.. _recompilefunction: recompilefunction.html


