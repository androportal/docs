


ode_optional_output
===================

ode solvers optional outputs description



Description
~~~~~~~~~~~

This page describes the most important values returned in the optional
lhs `ode`_ function arguments `w` and `iw`. These are valid only for
the `lsode`, `lsoda` and `lsodar` ode solver. For more details, one
can look at the solvers fortran code comments in
`SCI/modules/differential_equations/src/fortran/lsod*.f`.

:w(11) the step size in t last used (successfully).
: :w(12) the step size to be attempted on the next step.
: :w(13) the current value of the independent variable which the
  solver has actually reached, i.e. the current internal mesh point in
  t. On output, tcur will always be at least as far as the argument t,
  but may be farther (if interpolation was done).
: :w(14) a tolerance scale factor, greater than 1.0, computed when a
  request for too much accuracy was detected (istate = -3 if detected at
  the start of the problem, istate = -2 otherwise). If itol is left
  unaltered but rtol and atol are uniformly scaled up by a factor of
  `tolsf=w(14)` for the next call, then the solver is deemed likely to
  succeed. (The user may also ignore `tolsf` and alter the tolerance
  parameters in any other way appropriate.)
: :w(15) the value of t at the time of the last method switch, if any.
  This value is not significant with `lsode` solver.
: :iw(10) the number of `g` evaluations for the problem so far. This
  value is only significant for `lsodar` solver.
: :iw(11) the number of steps taken for the problem so far.
: :iw(12) the number of f evaluations for the problem so far.
: :iw(13) the number of jacobian evaluations (and of matrix lu
  decompositions) for the problem so far.
: :iw(14) the method order last used (successfully).
: :iw(15) the order to be attempted on the next step.
: :iw(16) the index of the component of largest magnitude in the
  weighted local error vector ( e(i)/ewt(i) ), on an error return with
  istate = -4 or -5.
: :iw(17) the length of `w` actually required, assuming that the
  length of rwork is to be fixed for the rest of the problem, and that
  switching may occur. This is defined on normal returns and on an
  illegal input return for insufficient storage.
: :iw(18) the length of `iw` actually required, assuming that the
  length of `iw` is to be fixed for the rest of the problem, and that
  switching may occur. This is defined on normal returns and on an
  illegal input return for insufficient storage.
: :iw(19) the method indicator for the last successful step. 1 means
  adams (nonstiff), 2 means bdf (stiff). This value is not significant
  with `lsode` solver.
: :iw(20) the current method indicator. 1 means adams (nonstiff), 2
  means bdf (stiff). This is the method to be attempted on the next
  step. Thus it differs from `iw(19)` only if a method switch has just
  been made. This value is not significant with `lsode` solver.
:

.. _ode: ode.html


