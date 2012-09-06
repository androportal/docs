


recompilefunction
=================

recompiles a scilab function, changing its type



Calling Sequence
~~~~~~~~~~~~~~~~


::

    recompilefunction(funname [,kind [,force]])




Arguments
~~~~~~~~~

:funname string, name of the function to recompile
: :kind string: **"n"** (noncompiled, type 11), **"c"** (compiled,
  type 13) or **"p"** (compiled, type 13, with provision for profiling).
  Default "c".
: :force boolean. If false, the function is recomplied only if its
  kind changes; if true, it is recompiled even if it keeps the same kind
  (notably useful to recompile a "p" function, to reset the profiling
  statistics).
:



Description
~~~~~~~~~~~


+ This function reverse-compiles a function variable via
  `fun2string`_, and recompiles it to the desired kind with `deff`_.




Examples
~~~~~~~~


::

    recompilefunction("asinh","p")
    for i=1:100; `asinh`_(`rand`_(100,100)); end
    `showprofile`_(`asinh`_)




See Also
~~~~~~~~


+ `function`_ opens a function definition
+ `deff`_ on-line definition of function
+ `comp`_ scilab function compilation
+ `fun2string`_ generates ascii definition of a scilab function
+ `profile`_ extract execution profiles of a Scilab function




Bibliography
~~~~~~~~~~~~

`http://wiki.scilab.org/Scilab_function_variables%3A_representation%2C
_manipulation`_

.. _profile: profile.html
.. _http://wiki.scilab.org/Scilab_function_variables%3A_representation%2C_manipulation: http://wiki.scilab.org/Scilab_function_variables%3A_representation%2C_manipulation
.. _function: function.html
.. _comp: comp.html
.. _fun2string: fun2string.html
.. _deff: deff.html


