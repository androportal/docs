


impl
====

differential algebraic equation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=impl([type],y0,ydot0,t0,t [,atol, [rtol]],res,adda [,jac])




Arguments
~~~~~~~~~

:y0, ydot0 real vectors or matrices (initial conditions)
: :t0 a real scalar (initial time)
: :t a real vector (times at which the solution is computed)
: :res, adda externals (function or character string or list)
: :type string `'adams'` or `'stiff'`
: :atol, rtol real scalars or real vectors of the same size as `y`
: :jac external (function or character string or list).
:



Description
~~~~~~~~~~~

Solution of the linear implicit differential equation

A(t,y) dy/dt=g(t,y), y(t0)=y0

`t0` is the initial instant, `y0` is the vector of initial conditions.
Vector `ydot0` of the time derivative of `y` at `t0` must also be
given. The input `res` is an `external`_ i.e. a function with
specified syntax, or the name a Fortran subroutine or a C function
(character string) with specified calling sequence or a list.

If `res` is a function, its syntax must be as follows:


::

    r = res(t,y,ydot)


where `t` is a real scalar (time) and `y` and `ydot` are real vector
(state and derivative of the state). This function must return
`r=g(t,y)-A(t,y)*ydot`.

If `res` is a character string, it refers to the name of a Fortran
subroutine or a C function. See
`SCI/modules/differential_equations/sci_gateway/fortran/Ex-impl.f` for
an example to do that.

`res` can also be a list: see the help of `ode`_.

The input `adda` is also an external.

If `adda` is a function, its syntax must be as follows:


::

    r = adda(t,y,p)


and it must return `r=A(t,y)+p` where `p` is a matrix to be added to
`A(t,y)`.

If `adda` is a character string, it refers to the name of a Fortran
subroutine or a C function. See
`SCI/modules/differential_equations/sci_gateway/fortran/Ex-impl.f` for
an example to do that.

`adda` can also be a list: see the help of `ode`_.

The input `jac` is also an external.

If `jac` is a function, its syntax must be as follows:


::

    j = jac(t,y,ydot)


and it must return the Jacobian of `r=g(t,y)-A(t,y)*ydot` with respect
to `y`.

If `jac` is a character string, it refers to the name of a Fortran
subroutine or a C function. See
`SCI/modules/differential_equations/sci_gateway/fortran/Ex-impl.f` for
an example to do that.

`jac` can also be a list: see the help of `ode`_.



Examples
~~~~~~~~


::

    y=impl([1;0;0],[-0.04;0.04;0],0,0.4,'resid','aplusp');
    // Using hot restart 
    //[x1,w,iw]=impl([1;0;0],[-0.04;0.04;0],0,0.2,'resid','aplusp');
    // hot start from previous call 
    //[x1]=impl([1;0;0],[-0.04;0.04;0],0.2,0.4,'resid','aplusp',w,iw);
    //max(abs(x1-x))




See Also
~~~~~~~~


+ `dassl`_ differential algebraic equation
+ `ode`_ ordinary differential equation solver
+ `external`_ Scilab Object, external function or routine


.. _ode: ode.html
.. _dassl: dassl.html
.. _external: external.html


