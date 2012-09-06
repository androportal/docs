


ode_root
========

ordinary differential equation solver with root finding



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [y, rd, w, iw] = ode("root", y0, t0, t [,rtol [,atol]], f [,jac], ng, g [,w,iw])




Arguments
~~~~~~~~~

:y0 a real vector or matrix (initial conditions).
: :t0 a real scalar (initial time).
: :t a real vector (times at which the solution is computed).
: :f an external i.e. function or character string or list.
: :rtol, atol a real constants or real vectors of the same size as
  `y`.
: :jac an external i.e. function or character string or list.
: :w, iw a real vectors. (INPUT/OUTPUT)
: :ng an integer.
: :g an external i.e. function or character string or list.
: :y a real vector or matrix. (OUTPUT)
: :rd a real vector. (OUTPUT)
:



Description
~~~~~~~~~~~

With this syntax (first argument equal to `"root"`) `ode` computes the
solution of the differential equation `dy/dt=f(t,y)` until the state
`y(t)` crosses the surface `g(t,y)=0`.

`g` should give the equation of the surface. It is an external i.e. a
function with specified syntax, or the name of a Fortran subroutine or
a C function (character string) with specified calling sequence or a
list.

If `g` is a function the syntax should be as follows:


::

    z = g(t,y)


where `t` is a real scalar (time) and `y` a real vector (state). It
returns a vector of size `ng` which corresponds to the `ng`
constraints. If `g` is a character string it refers to the name of a
Fortran subroutine or a C function, with the following calling
sequence: `g(n,t,y,ng,gout)` where `ng` is the number of constraints
and `gout` is the value of `g` (output of the program). If `g` is a
list the same conventions as for `f` apply (see `ode`_ help).

Ouput `rd` is a `1 x k` vector. The first entry contains the stopping
time. Other entries indicate which components of `g` have changed
sign. `k` larger than 2 indicates that more than one surface ( `(k-1)`
surfaces) have been simultaneously traversed.

Other arguments and other options are the same as for `ode`, see the
`ode`_ help.



Examples
~~~~~~~~


::

    // Integration of the differential equation
    // dy/dt=y , y(0)=1, and finds the minimum time t such that y(t)=2
    `deff`_("[ydot]=f(t,y)","ydot=y")
    `deff`_("[z]=g(t,y)","z=y-2")
    y0=1;ng=1;
    [y,rd]=`ode`_("roots",y0,0,2,f,ng,g)
     
    `deff`_("[z]=g(t,y)","z=y-[2;2;33]")
    [y,rd]=`ode`_("roots",1,0,2,f,3,g)




See Also
~~~~~~~~


+ `dasrt`_ DAE solver with zero crossing
+ `ode`_ ordinary differential equation solver


.. _dasrt: dasrt.html
.. _ode: ode.html


