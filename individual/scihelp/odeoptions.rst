


odeoptions
==========

set options for ode solvers



Calling Sequence
~~~~~~~~~~~~~~~~


::

    odeoptions()




Description
~~~~~~~~~~~

This function interactively displays a command which should be
executed to set various options of ode solvers. The context variable
`%ODEOPTIONS` sets the options.

The `ode` function checks if this variable exists and in this case it
uses it. For using default values you should clear this variable. To
create it you must execute the instruction `%ODEOPTIONS=odeoptions()`.

The variable `%ODEOPTIONS` is a vector with the following elements:

`[itask, tcrit, h0, hmax, hmin, jactyp, mxstep, maxordn, maxords,
ixpr, ml, mu]`.

The default value is: `[1,0,0,%inf,0,2,500,12,5,0,-1,-1].`

The meaning of the elements is described below.



+ `itask` sets the integration mode:

    + 1: normal computation at specified times
    + 2 : computation at mesh points (given in first row of output of
      `ode`)
    + 3 : one step at one internal mesh point and return
    + 4 : normal computation without overshooting `tcrit`
    + 5 : one step, without passing `tcrit`, and return

+ `tcrit` critical time used only if `itask` equals 4 or 5 as
  described above
+ `h0` first step tried
+ `hmax` max step size
+ `hmin` min step size
+ `jactype` set jacobian properties:

    + 0: functional iterations, no jacobian used ( `"adams"` or `"stiff"`
      only)
    + 1 : user-supplied full jacobian
    + 2 : internally generated full jacobian
    + 3: internally generated diagonal jacobian ( `"adams"` or `"stiff"`
      only)
    + 4 : user-supplied banded jacobian (see `ml` and `mu` below)
    + 5 : internally generated banded jacobian (see `ml` and `mu` below)

+ `maxordn` maximum non-stiff order allowed, at most 12
+ `maxords` maximum stiff order allowed, at most 5
+ `ixpr` print level, 0 or 1
+ `ml`, `mu`If `jactype` equals 4 or 5, `ml` and `mu` are the lower
  and upper half-bandwidths of the banded jacobian: the band is the
  `i,j`'s with `i-ml` <= `j` <= `ny-1`. If `jactype` equals 4 the
  jacobian function must return a matrix `J` which is `ml+mu+1 x ny`
  (where `ny=dim` of `y` in `ydot=f(t,y))` such that column 1 of `J` is
  made of `mu` zeros followed by `df1/dy1`, `df2/dy1`, `df3/dy1`, ... (
  `1+ml` possibly non-zero entries), column 2 is made of `mu-1` zeros
  followed by `df1/dx2`, `df2/dx2`, etc.





Examples
~~~~~~~~

In the following example, we solve the Ordinary Differential Equation
`dy/dt=y^2-y sin(t)+cos(t)` with the initial condition `y(0)=0`
claiming the solution be stored at each mesh value.


::

    function ydot=f(t, y)
        ydot=y^2-y*`sin`_(t)+`cos`_(t)
    endfunction
    %ODEOPTIONS=[2,0,0,%inf,0,2,500,12,5,0,-1,-1];
    y=`ode`_(0,0,%pi,f);
    `plot`_(y(1,:),y(2,:))
    clear %ODEOPTIONS




See Also
~~~~~~~~


+ `ode`_ ordinary differential equation solver


.. _ode: ode.html


