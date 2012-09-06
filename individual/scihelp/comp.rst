


comp
====

scilab function compilation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    comp(function [,opt])




Arguments
~~~~~~~~~

:function a scilab function, not compiled (type 11)
: :opt flag with value 0 (default), 1 or 2.
:



Description
~~~~~~~~~~~

`comp(function)` compiles the function `function`. Compiled and
interpreted functions are equivalent but usually compiled functions
are much faster. The functions provided in the standard libraries are
compiled.

The online definition as well as the short syntax of the commands
`exec` and `deff` generate compiled functions. So `comp` has to be
used in very particular cases. To produce uncompiled functions one
must use `exec`_ or `deff`_ with the option `"n"`.

The value `opt==2` causes the function to be compiled "for profiling".
Note that now it is possible to add profiling instruction after
compilation using the `add_profiling`_ function.

The obsolete `opt==1` option was specific to code analysis purposes
and is now ignored, i.e treated as `opt==0`.

Note: the compilation takes part "in place", i.e the original function
is modified and no new object is created.



See Also
~~~~~~~~


+ `type`_ Returns the type of a variable
+ `deff`_ on-line definition of function
+ `exec`_ script file execution
+ `function`_ opens a function definition
+ `add_profiling`_ Adds profiling instructions to a function.
+ `profile`_ extract execution profiles of a Scilab function


.. _exec: exec.html
.. _add_profiling: add_profiling.html
.. _type: type.html
.. _function: function.html
.. _profile: profile.html
.. _deff: deff.html


