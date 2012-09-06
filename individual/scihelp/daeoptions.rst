


daeoptions
==========

set options for dae solver



Calling Sequence
~~~~~~~~~~~~~~~~


::

    daeoptions()




Description
~~~~~~~~~~~

If it exists in the dae function calling context the variable
`%DAEOPTIONS` the dae function use it to sets options.

This daeoptions function interactively displays a command which should
be executed to set various options of the `dae`_ solver.

The `dae` function checks if this variable exists and in this case it
uses it. For using default values you should clear this variable. Note
that `daeoptions` does not create this variable. To create it you must
execute the command line displayed by `daeoptions`.

The variable `%DAEOPTIONS` is a `list`_ with the following elements:


::

    `list`_(tstop,imode,band,maxstep,stepin,nonneg,isest)


The default value is:


::

    `list`_([],0,[],[],[],0,0)


The meaning of the elements is described below.

:tstop a real scalar or an empty matrix, gives the maximum time for
  which `g` is allowed to be evaluated. An empty matrix means "no
  limits" imposed for time.
: :imode if it is 0 `dae` returns only the user specified time point
  values, and if it is 1 `dae` returns its intermediate computed values.
: :band a two components vector which give the definition `[ml,mu]` of
  band matrix computed by `jac`; `r(i - j + ml + mu + 1,j)` =
  `dg(i)/dy(j)+cj*dg(i)/dydot(j)`. If `jac` returns a full matrix set
  `band=[]`
: :maxstep a scalar or an empty matrix, the maximum step size, empty
  matrix means "no limitation".
: :stepin a scalar or an empty matrix, the minimum step size, empty
  matrix means "not specified".
: :nonneg a scalar, must be set to 0 if *the solution is known to be
  non negative* . In the other case it must be set to 1.
: :isest a scalar, must be set to 0 if the given initial condition is
  compatible: `g(t0,x0,xdot0)=0`, and set to 1 if `xdot0` is just an
  estimation.
:



See Also
~~~~~~~~


+ `dae`_ Differential algebraic equations solver


.. _list: list.html
.. _dae: dae.html


