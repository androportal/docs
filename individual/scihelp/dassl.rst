


dassl
=====

differential algebraic equation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [r [,hd]]=dassl(x0,t0,t [,atol,[rtol]],res [,jac] [,info] [,hd])




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

: :t0 a real number is the initial instant.
: :t a real scalar or vector. Gives instants for which you want the
  solution. Note that you can get solution at each dassl's step point by
  setting `info(2)=1`.
: :atol, rtol a real scalars or column vectors of same size as `y`.
  `atol, rtol` give respectively absolute and relative error tolerances
  of solution. If vectors the tolerances are specified for each
  component of `y`.
: :res an `external`_ (function or list or string). Computes the value
of `g(t,y,ydot)`. It may be :

    + A Scilab function. Its calling sequence must be
      `[r,ires]=res(t,y,ydot)` and `res` must return the residue
      `r=g(t,y,ydot)` and error flag `ires`. `ires = 0` if `res` succeeds to
      compute `r`, `=-1` if residue is locally not defined for `(t,y,ydot)`,
      `=-2` if parameters are out of admissible range.
    + A list. This form allows to pass parameters other than `t`, `y`,
      `ydot` to the function. It must be as follows:

::

        `list`_(res,x1,x2,...)

      where the calling sequence of the function `res` is now

::

        r=res(t,y,ydot,x1,x2,...)

      `res` still returns `r=g(t,y,ydot)` as a function of
      `(t,y,ydot,x1,x2,...)`.
    + A string. It must refer to the name of a C or Fortran subroutine
      linked with Scilab. In C the calling sequence must be:

::

        void res(`double`_ *t, `double`_ y[], `double`_ yd[], `double`_ r[],
                 `int`_ *ires, `double`_ rpar[], `int`_ ipar[])

      In Fortran it must be:

::

        subroutine res(t,y,yd,r,ires,rpar,ipar)
        `double`_ precision t, y(*),yd(*),r(*),rpar(*)
        integer ires,ipar(*)

      The `rpar` and `ipar` arrays must be present but cannot be used.

: :jac an `external`_ (function or list or string). Computes the value
of `dg/dy+cj*dg/dydot` for a given value of parameter `cj`.

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
    + A character string. It must refer to the name of a C or Fortran
      subroutine linked with Scilab. In C the calling sequence must be:

::

        void jac(`double`_ *t, `double`_ y[], `double`_ yd[], `double`_ pd[],
                 `double`_ *cj, `double`_ rpar[], `int`_ ipar[])

      In Fortran it must be:

::

        subroutine jac(t,y,yd,pd,cj,rpar,ipar)
        `double`_ precision t, y(*),yd(*),pd(*),cj,rpar(*)
        integer ipar(*)



: :info optional list which contains `7` elements. Default value is
`list([],0,[],[],[],0,0)`.
    :info(1) a real scalar which gives the maximum time for which `g` is
      allowed to be evaluated or an empty matrix `[]` if no limits imposed
      for time.
    : :info(2) a flag which indicates if `dassl` returns its intermediate
      computed values ( `flag=1`) or only the user specified time point
      values ( `flag=0`).
    : :info(3) a `2` components vector which give the definition `[ml,mu]`
      of band matrix computed by `jac`; `r(i - j + ml + mu + 1,j) =
      "dg(i)/dy(j)+cj*dg(i)/dydot(j)"` .If `jac` returns a full matrix set
      `info(3)=[]`.
    : :info(4) a real scalar which gives the maximum step size. Set
      `info(4)=[]` if no limitation.
    : :info(5) a real scalar which gives the initial step size. Set
      `info(5)=[]` if not specified.
    : :info(6) set `info(6)=1` if the solution is known to be non
      negative, else set `info(6)=0`.
    : :info(7) set `info(7)=1` if `ydot0` is just an estimation,
      `info(7)=0` if `g(t0,y0,ydot0)=0`.
    :

: :hd a real vector which allows to store the `dassl` context and to
  resume integration.
: :r a real matrix. Each column is the vector `[t;x(t);xdot(t)]` where
  `t` is time index for which the solution had been computed.
:



Description
~~~~~~~~~~~

The `dassl` function integrate the differential algebraic equation and
returns the evolution of `y` a given time points


::

    g(t,y,ydot)=0
    y(t0)=y0  `and`_   ydot(t0)=ydot0




Examples
~~~~~~~~


::

    function [r, ires]=chemres(t, y, yd)
       r=[-0.04*y(1)+1d4*y(2)*y(3)-yd(1)
           0.04*y(1)-1d4*y(2)*y(3)-3d7*y(2)*y(2)-yd(2)
           y(1)+y(2)+y(3)-1];
       ires=0
    endfunction
    
    function pd=chemjac(x, y, yd, cj)
        pd=[-0.04-cj , 1d4*y(3)               , 1d4*y(2);
             0.04    ,-1d4*y(3)-2*3d7*y(2)-cj ,-1d4*y(2);
             1       , 1                      , 1       ]
    endfunction
    
    y0=[1;0;0];
    yd0=[-0.04;0.04;0];
    t=[1.d-5:0.02:.4,0.41:.1:4,40,400,4000,40000,4d5,4d6,4d7,4d8,4d9,4d10];
    
    y=dassl([y0,yd0],0,t,chemres);
    
    info=`list`_([],0,[],[],[],0,0);
    info(2)=1;
    y1=dassl([y0,yd0],0,4d10,chemres,info);
    y2=dassl([y0,yd0],0,4d10,chemres,chemjac,info);
     
    //Using extra argument for parameters
    //-----------------------------------
    function [r, ires]=chemres(t, y, yd, a, b, c)
       r=[-a*y(1)+b*y(2)*y(3)-yd(1)
           a*y(1)-b*y(2)*y(3)-c*y(2)*y(2)-yd(2)
           y(1)+y(2)+y(3)-1];
       ires=0
    endfunction
    
    function pd=chemjac(x, y, yd, cj, a, b, c)
        pd=[-a-cj , b*y(3)             , b*y(2);
             a    ,-b*y(3)-2*c*y(2)-cj ,-b*y(2);
             1    , 1                  , 1       ]
    endfunction
    
    y3=dassl([y0,yd0],0,t,`list`_(chemres,0.04,1d4,3d7),`list`_(chemjac,0.04,1d4,3d7));
    
    //using C code
    //------------
    // - create the C code
    rescode=['void chemres(double *t, double y[], double yd[], double r[], int *ires, double rpar[], int ipar[])'
             ' {'
             '   r[0] = -0.04*y[0]+1.0e4*y[1]*y[2]                -yd[0];'
             '   r[1] =  0.04*y[0]-1.0e4*y[1]*y[2]-3.0e7*y[1]*y[1]-yd[1];'
             '   r[2] =       y[0]+y[1]+y[2]-1;'
             '   *ires = 0;'
             ' }'];
    
    jaccode=['void chemjac(double *t, double y[], double yd[], double pd[], double *cj, double rpar[], int ipar[])'
             ' {'
             '   /* first column*/'
             '   pd[0] = -0.04-*cj;'
             '   pd[1] =  0.04;'
             '   pd[2] =  1.0;'
             '    /* second column*/'
             '   pd[3] =  1.0e4*y[2];'
             '   pd[4] = -1.0e4*y[2]-2*3.0e7*y[1]-*cj;'
             '   pd[5] =  1.0;'
             '    /* third column*/'
             '   pd[6] =  1.0e4*y[1];'
             '   pd[7] = -1.0e4*y[1];'
             '   pd[8] =  1.0;'
             ' }'];
    `mputl`_([rescode;jaccode],`fullfile`_(TMPDIR,'mycode.c')) //create the C file
    
    // - compile it
    `ilib_for_link`_(['chemres','chemjac'],`fullfile`_(TMPDIR,'mycode.c'),[],'c','',`fullfile`_(TMPDIR,'loader.sce'));//compile
    
    // - link it with Scilab
    `exec`_(`fullfile`_(TMPDIR,'loader.sce')) //incremental linking
    
    // - call dassl
    y4=dassl([y0,yd0],0,t,'chemres','chemjac');




See Also
~~~~~~~~


+ `ode`_ ordinary differential equation solver
+ `dasrt`_ DAE solver with zero crossing
+ `impl`_ differential algebraic equation
+ `fort`_ Fortran or C user routines call
+ `link`_ dynamic linker
+ `external`_ Scilab Object, external function or routine


.. _ode: ode.html
.. _dasrt: dasrt.html
.. _link: link.html
.. _external: external.html
.. _fort: fort.html
.. _impl: impl.html


