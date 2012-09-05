


dae
===

Differential algebraic equations solver



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=dae(initial,t0,t,res) 
    [y [,hd]]=dae(initial,t0,t [,rtol, [atol]],res [,jac] [,hd])
    [y,rd]=dae("root",initial,t0,t,res,ng,surface)
    [y ,rd [,hd]]=dae("root",initial,t0,t [,rtol, [atol]],res [,jac], ng, surface [,hd])




Arguments
~~~~~~~~~

:initial a column vector. It may be equal to `x0` or `[x0;xdot0]`.
  Where `x0` is the state value at initial time `t0` and `xdot0` is the
  initial state derivative value or an estimation of it (see below).
: :t0 a real number, the initial time.
: :t a real scalar or vector. Gives instants for which you want the
  solution. Note that you can get solution at each dae's step point by
  setting ``%DAEOPTIONS`_(2)=1` .
: :rtol a real scalar or a column vector of same size as `x0`, the
  relative error tolerance of solution. If `rtol` is a vector the
  tolerances are specified for each component of the state.
: :atol a real scalar or a column vector of same size as `x0`, the
  absolute error tolerance of solution. If `atol` is a vector the
  tolerances are specified for each component of the state.
: :res an `external`_ function computes the value of `g(t,y,ydot)`. It
may be
    :a Scilab function In this case, its calling sequence must be
      `[r,ires]=res(t,x,xdot)` and `res` must return the residue
      `r=g(t,x,xdot)` and error flag `ires`. `ires = 0` if `res` succeeds to
      compute `r`. `ires = -1` if residue is locally not defined for
      `g(t,x,xdot)`. `ires =-2` if parameters are out of admissible range.
    : :a list This form of external is used to pass parameters to the
    function. It must be as follows:

::

        `list`_(res,p1,p2,...)

    where the calling sequence of the function `res` is now

::

        r=res(t,y,ydot,p1,p2,...)

    `res` still returns the residual value as a function of
      `(t,x,xdot,x1,x2,...)`, and `p1, p2,...` are function parameters.
    : :a character string it must refer to the name of a C or fortran
    routine, assuming that < `r_name`> is the given name.

        + The Fortran calling sequence must be
          `<r_name>(t,x,xdot,res,ires,rpar,ipar)` `double precision
          t,x(*),xdot(*),res(*),rpar(*)` `integer ires,ipar(*)`
        + The C calling sequence must be `C2F(<r_name>)(double *t, double *x,
          double *xdot, double *res, integer *ires, double *rpar, integer
          *ipar)`
    where

        + `t` is the current time value
        + `x` the state array
        + `xdot` the array of state derivatives
        + `res` the array of residuals
        + `ires` the execution indicator
        + `rpar` is the array of floating point parameter values, needed but
          cannot be set by the `dae` function
        + `ipar` is the array of floating integer parameter values, needed but
          cannot be set by the `dae` function

    :

: :jac an `external`_ computes the value of `dg/dx+cj*dg/dxdot` for a
given value of parameter `cj`. It may be
    :a Scilab function Its calling sequence must be `r=jac(t,x,xdot,cj)`
      and the `jac` function must return
      `r=dg(t,x,xdot)/dy+cj*dg(t,x,xdot)/dxdot` where `cj` is a real scalar.
    : :a list This form of external is used to pass parameters to the
    function. It must be as follows:

::

        `list`_(jac,p1,p2,...)

    where the calling sequence of the function `jac` is now

::

        r=jac(t,x,xdot,p1,p2,...)

    `jac` still returns `dg/dx+cj*dg/dxdot` as a function of
      `(t,x,xdot,cj,p1,p2,...)`.
    : :a character string it must refer to the name of a C or fortran
    routine assuming that <j_name> is the given name.

        + The Fortran calling sequence must be `<j_name>(t, x, xdot, r, cj,
          ires, rpar, ipar)` double precision `t, x(*), xdot(*), r(*), ci,
          rpar(*)` integer `ires, ipar(*)`
        + The C calling sequence must be `C2F(<j_name>)(double *t, double *x,
          double *xdot, double *r, double *cj, integer *ires, double *rpar,
          integer *ipar)`
    where `t, x, xdot, ires, rpar, ipar` have similar definition as above,
      `r` is the results array
    :

: :surface an `external`_ computes the value of the column vector
`surface(t,x)` with `ng` components. Each component defines a surface.
    :a Scilab function Its calling sequence must be `r=surface(t,x)`, this
      function must return a vector with `ng` elements.
    : :a list This form of `external`_ is used to pass parameters to the
    function. It must be as follows:

::

        `list`_(surface,p1,p2,...)

    where the calling sequence of the function `surface` is now

::

        r=surface(t,x,p1,p2,...)


    : :a character string it must refer to the name of a C or fortran
    routine. Assuming that <s_name> is the given name,

        + `The Fortran calling sequence must be` `<s_name>(nx, t, x, ng, r,
          rpar, ipar)` `double precision t, x(*), r(*), rpar(*)` `integer nx,
          ng,ipar(*)`
        + The C calling sequence must be `C2F(<s_name>)(double *t, double *x,
          double *xdot, double *r, double *cj, integer *ires, double *rpar,
          integer *ipar)`
    where `t, x, rpar, ipar` have similar definition as above, `ng` is the
      number of surfaces, `nx` the dimension of the state and r is the
      results array.
    :

: :rd a vector with two entries `[times num]` where `times` is the
  value of the time at which the surface is crossed, `num` is the number
  of the crossed surface
: :hd a real vector, as an output it stores the `dae` context. It can
  be used as an input argument to resume integration (hot restart).
: :y a real matrix. If ``%DAEOPTIONS`_(2)=1` , each column is the
  vector `[t;x(t);xdot(t)]` where `t` is time index for which the
  solution had been computed. Else `y` is the vector `[x(t);xdot(t)]`.
:



Description
~~~~~~~~~~~

The `dae` function is a gateway built above the `dassl`_ and `dasrt`_
function designed for implicit differential equations integration.


::

    g(t,x,xdot)=0
    x(t0)=x0  `and`_   xdot(t0)=xdot0


If `xdot0` is not given in the *initial* argument, the `dae` function
tries to compute it solving `g(t,x0,xdot0)=0`.

if `xdot0` is given in the *initial* argument it may be either a
compatible derivative satisfying `g(t,x0,xdot0)=0` or an approximate
value. In the latter case `%DAEOPTIONS`_(7) must be set to 1.

Detailed examples using Scilab and C coded externals are given in
`modules/differential_equations/tests/unit_tests/dassldasrt.tst`



Examples
~~~~~~~~


::

    //Example with Scilab  code
    function [r, ires]=chemres(t, y, yd)
        r(1) = -0.04*y(1) + 1d4*y(2)*y(3) - yd(1);
        r(2) =  0.04*y(1) - 1d4*y(2)*y(3) - 3d7*y(2)*y(2) - yd(2);
        r(3) =       y(1) +     y(2)      + y(3)-1;
        ires =  0;
    endfunction
    function pd=chemjac(x, y, yd, cj)
        pd=[-0.04-cj , 1d4*y(3)               , 1d4*y(2);
             0.04    ,-1d4*y(3)-2*3d7*y(2)-cj ,-1d4*y(2);
             1       , 1                      , 1       ]
    endfunction
    
    x0=[1; 0; 0];
    xd0=[-0.04; 0.04; 0];
    t=[1.d-5:0.02:.4, 0.41:.1:4, 40, 400, 4000, 40000, 4d5, 4d6, 4d7, 4d8, 4d9, 4d10];
    
    y=dae([x0,xd0],0,t,chemres);// returns requested observation time points
    
    %DAEOPTIONS=`list`_([],1,[],[],[],0,0); // ask  dae mesh points to be returned
    y=dae([x0,xd0],0,4d10,chemres); // without jacobian
    y=dae([x0,xd0],0,4d10,chemres,chemjac); // with jacobian
    
    //example with C code (C compiler needed) --------------------------------------------------
    //-1- create the C codes in TMPDIR - Vanderpol equation, implicit form
    code=['#include <math.h>'
          'void res22(double *t,double *y,double *yd,double *res,int *ires,double *rpar,int *ipar)'
          '{res[0] = yd[0] - y[1];'
          ' res[1] = yd[1] - (100.0*(1.0 - y[0]*y[0])*y[1] - y[0]);}'
          ' '
          'void jac22(double *t,double *y,double *yd,double *pd,double *cj,double *rpar,int *ipar)'
          '{pd[0]=*cj - 0.0;'
          ' pd[1]=    - (-200.0*y[0]*y[1] - 1.0);'
          ' pd[2]=    - 1.0;'
          ' pd[3]=*cj - (100.0*(1.0 - y[0]*y[0]));}'
          ' '
          'void gr22(int *neq, double *t, double *y, int *ng, double *groot, double *rpar, int *ipar)'
          '{ groot[0] = y[0];}']
    `cd`_ TMPDIR;      
    `mputl`_(code, 't22.c') 
    //-2- compile and load them
    `ilib_for_link`_(['res22' 'jac22' 'gr22'],'t22.c',[],'c',TMPDIR+'/Makefile',TMPDIR+'/t22loader.sce');
    `exec`_('t22loader.sce')
    //-3- run
    rtol=[1.d-6;1.d-6];atol=[1.d-6;1.d-4];
    t0=0;y0=[2;0];y0d=[0;-2];t=[20:20:200];ng=1;
    //simple simulation
    t=0:0.003:300;
    yy=dae([y0,y0d],t0,t,atol,rtol,'res22','jac22');
    `clf`_();`plot`_(yy(1,:),yy(2,:))
    //find first point where yy(1)=0
    [yy,nn,hotd]=dae("root",[y0,y0d],t0,300,atol,rtol,'res22','jac22',ng,'gr22');
    `plot`_(yy(1,1),yy(2,1),'r+')
    `xstring`_(yy(1,1)+0.1,yy(2,1),`string`_(nn(1)))
    
    //hot restart for next point
    t01=nn(1);[pp,qq]=`size`_(yy);y01=yy(2:3,qq);y0d1=yy(3:4,qq);
    [yy,nn,hotd]=dae("root",[y01,y0d1],t01,300,atol,rtol,'res22','jac22',ng,'gr22',hotd);
    `plot`_(yy(1,1),yy(2,1),'r+')
    `xstring`_(yy(1,1)+0.1,yy(2,1),`string`_(nn(1)))




See Also
~~~~~~~~


+ `ode`_ ordinary differential equation solver
+ `daeoptions`_ set options for dae solver
+ `dassl`_ differential algebraic equation
+ `impl`_ differential algebraic equation
+ `fort`_ Fortran or C user routines call
+ `link`_ dynamic linker
+ `external`_ Scilab Object, external function or routine


.. _dassl: dassl.html
.. _ode: ode.html
.. _dasrt: dasrt.html
.. _link: link.html
.. _external: external.html
.. _fort: fort.html
.. _impl: impl.html
.. _daeoptions: daeoptions.html


