


dasrt
=====

DAE solver with zero crossing



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [r,nn,[,hd]]=dasrt(x0,t0,t [,atol,[rtol]],res [,jac],ng, surf [,info] [,hd])




Arguments
~~~~~~~~~

:x0 is either `y0` ( `ydot0` is estimated by `dassl` with zero as
first estimate) or the matrix `[y0 ydot0]`. `g(t,y0,ydot0)` must be
equal to zero. If you only know an estimate of `ydot0` set
`info(7)=1`.
    :y0 a real column vector of initial conditions.
    : :ydot0 a real column vector of the time derivative of `y` at `t0`
      (may be an estimate).
    :

: :t0 a real number, it is the initial instant.
: :t a real scalar or vector. Gives instants for which you want the
  solution. Note that you can get solution at each dassl's step point by
  setting `info(2)=1`.
: :nn a vector with two entries `[times num]` `times` is the value of
  the time at which the surface is crossed, `num` is the number of the
  crossed surface.
: :atol, rtol real scalars or column vectors of same size as `y`.
  `atol, rtol` give respectively absolute and relative error tolerances
  of solution. If vectors the tolerances are specified for each
  component of `y`.
: :res `external`_ (function or list or string). Computes the value of
`g(t,y,ydot)`. It may be :

    + A Scilab function. Its calling sequence must be
      `[r,ires]=res(t,y,ydot)` and `res` must return the residue
      `r=g(t,y,ydot)` and error flag `ires`. `ires = 0` if `res` succeeds to
      compute `r`, `=-1` if residue is locally not defined for `(t,y,ydot)`,
      `=-2` if parameters are out of admissible range.
    + A list. This form allows to pass parameters other than t,y,ydot to
      the function. It must be as follows:

::

        `list`_(res,x1,x2,...)

      where the calling sequence of the function `res` is now

::

        r=res(t,y,ydot,x1,x2,...)

      `res` still returns `r=g(t,y,ydot)` as a function of
      `(t,y,ydot,x1,x2,...)`. Warning: this form must not be used if there
      is no extra argument to pass to `the function.`
    + A string. It must refer to the name of a C or Fortran subroutine
      linked with Scilab. In C The calling sequence must be:

::

        void res(`double`_ *t, `double`_ y[], `double`_ yd[], `double`_ r[],
                 `int`_ *ires, `double`_ rpar[], `int`_ ipar[])

      In Fortran it must be:

::

        subroutine res(t,y,yd,r,ires,rpar,ipar)
        `double`_ precision t, y(*),yd(*),r(*),rpar(*)
        integer ires,ipar(*)

      The `rpar` and `ipar` arrays must be present but cannot be used.

: :jac `external`_ (function or list or string). Computes the value of
`dg/dy+cj*dg/dydot` for a given value of parameter `cj`.

    + A Scilab function. Its calling sequence must be `r=jac(t,y,ydot,cj)`
      and the `jac` function must return
      `r=dg(t,y,ydot)/dy+cj*dg(t,y,ydot)/dydot` where `cj` is a real scalar.
    + A list. It must be as follows

::

        `list`_(jac,x1,x2,...)

      where the calling sequence of the function `jac` is now

::

        r=jac(t,y,ydot,cj,x1,x2,...)

      `jac` still returns `dg/dy+cj*dg/dydot` as a function of
      `(t,y,ydot,cj,x1,x2,...)`.
    + A character string. It must refer to the name of a Fortran
      subroutine linked with scilab In C The calling sequence must be:

::

        void jac(`double`_ *t, `double`_ y[], `double`_ yd[], `double`_ pd[],
                 `double`_ *cj, `double`_ rpar[], `int`_ ipar[])

      In Fortran it must be:

::

        subroutine jac(t,y,yd,pd,cj,rpar,ipar)
        `double`_ precision t, y(*),yd(*),pd(*),cj,rpar(*)
        integer ipar(*)



: :surf `external`_ (function or list or string). Computes the value
of the column vector `surf(t,y)` with `ng` components. Each component
defines a surface. It may be defined by:

    + A Scilab function. Its calling sequence must be `surf(t,y)`
    + A list. It must be as follows

::

        `list`_(`surf`_,x1,x2,...)

      where the calling sequence of the function `surf` is now

::

        r=`surf`_(t,y,x1,x2,...)


    + A character string. It must refer to the name of a Fortran
      subroutine linked with scilab. In C the calling sequence must be:

::

        void `surf`_(`int`_ *ny, `double`_ *t, `double`_ y[], `int`_ *ng, `double`_ gout[])

      In Fortran it must be:

::

        subroutine `surf`_(ny,t,y,ng,gout)
        `double`_ precision t, y(*),gout(*)
        integer ny,ng



: :info list which contains `7` elements. Default value is
`list([],0,[],[],[],0,0)`.
    :info(1) real scalar which gives the maximum time for which `g` is
      allowed to be evaluated or an empty matrix `[]` if no limits imposed
      for time.
    : :info(2) flag which indicates if `dassl` returns its intermediate
      computed values ( `flag=1`) or only the user specified time point
      values ( `flag=0`).
    : :info(3) `2` components vector which give the definition `[ml,mu]`
      of band matrix computed by `jac`; `r(i - j + ml + mu + 1,j) =
      "dg(i)/dy(j)+cj*dg(i)/dydot(j)"` .If `jac` returns a full matrix set
      `info(3)=[]`.
    : :info(4) real scalar which gives the maximum step size. Set
      `info(4)=[]` if no limitation.
    : :info(5) real scalar which gives the initial step size. Set
      `info(5)=[]` if not specified.
    : :info(6) set `info(6)=1` if the solution is known to be non
      negative, else set `info(6)=0`.
    : :info(7) set `info(7)=1` if `ydot0` is just an estimation,
      `info(7)=0` if `g(t0,y0,ydot0)=0`.
    :

: :hd real vector which allows to store the `dassl` context and to
  resume integration.
: :r real matrix . Each column is the vector `[t;x(t);xdot(t)]` where
  `t` is time index for which the solution had been computed.
:



Description
~~~~~~~~~~~

Solution of the implicit differential equation.


::

    g(t,y,ydot)=0
    y(t0)=y0  `and`_   ydot(t0)=ydot0


Returns the surface crossing instants and the number of the surface
reached in `nn`.

Detailed examples can be found in
SCIDIR/tests/unit_tests/dassldasrt.tst



Examples
~~~~~~~~


::

    //dy/dt = ((2*log(y)+8)/t -5)*y,  y(1) = 1,  1<=t<=6
    //g1 = ((2*log(y)+8)/t - 5)*y 
    //g2 = log(y) - 2.2491 
    y0=1;t=2:6;t0=1;y0d=3;
    atol=1.d-6;rtol=0;ng=2;
    
    `deff`_('[delta,ires]=res1(t,y,ydot)','ires=0;delta=ydot-((2*log(y)+8)/t-5)*y')
    `deff`_('[rts]=gr1(t,y)','rts=[((2*log(y)+8)/t-5)*y;log(y)-2.2491]')
    
    [yy,nn]=dasrt([y0,y0d],t0,t,atol,rtol,res1,ng,gr1);
    //(Should return nn=[2.4698972 2])




See Also
~~~~~~~~


+ `ode`_ ordinary differential equation solver
+ `dassl`_ differential algebraic equation
+ `impl`_ differential algebraic equation
+ `fort`_ Fortran or C user routines call
+ `link`_ dynamic linker
+ `external`_ Scilab Object, external function or routine


.. _dassl: dassl.html
.. _ode: ode.html
.. _link: link.html
.. _external: external.html
.. _fort: fort.html
.. _impl: impl.html


