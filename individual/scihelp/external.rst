


external
========

Scilab Object, external function or routine



Description
~~~~~~~~~~~

External function or routine for use with specific commands.

An "external" is a function or routine which is used as an argument of
some high-level primitives (such as `ode`, `optim`, `schur`...).

The calling sequence of the external (function or routine) is imposed
by the high-level primitive which sets the arguments of the external.

For example the external function `costfunc` is an argument of the
`optim` primitive. Its calling sequence must be:
`[f,g,ind]=costfunc(x,ind)` and `optim` (the high-level optimization
primitive) is invoked as follows:


::

    `optim`_(costfunc,...)


Here `costfunc` (the cost function to be minimized by the primitive
`optim`) evaluates `f=f(x)` and `g=` gradient of `f` at `x` ( `ind` is
an integer. Its use is precised in the `optim` help).

If other values are needed by the external function these variables
can be defined in its environment. Also, they can be put in a list.
For example, the external function


::

    [f,g,ind]=costfunc(x,ind,a,b,c)


is valid for `optim` if the external is `list(costfunc,a,b,c)` and the
call to `optim` is then:


::

    `optim`_(`list`_(costfunc,a1,b1,c1),....


An external can also be a Fortran or C routine : this is convenient to
speed up the computations.

The name of the routine is given to the high-level primitive as a
character string. The calling sequence of the routine is also imposed.

External Fortran or C routines can also be dynamically linked (see
`link`).



See Also
~~~~~~~~


+ `ode`_ ordinary differential equation solver
+ `optim`_ non-linear optimization routine
+ `impl`_ differential algebraic equation
+ `dassl`_ differential algebraic equation
+ `intg`_ definite integral
+ `schur`_ [ordered] Schur decomposition of matrix and pencils
+ `gschur`_ generalized Schur form (obsolete).


.. _schur: schur.html
.. _dassl: dassl.html
.. _intg: intg.html
.. _ode: ode.html
.. _gschur: gschur.html
.. _optim: optim.html
.. _impl: impl.html


