====
"leastsq"
====

Scilab Function Last update : 11/03/2005
**leastsq** - Solves non-linear least squares problems



Calling Sequence
~~~~~~~~~~~~~~~~

[fopt,[xopt,[grdopt]]]=leastsq(fun, x0)
[fopt,[xopt,[grdopt]]]=leastsq(fun, dfun, x0)
[fopt,[xopt,[grdopt]]]=leastsq(fun, cstr, x0)
[fopt,[xopt,[grdopt]]]=leastsq(fun, dfun, cstr, x0)
[fopt,[xopt,[grdopt]]]=leastsq(fun, dfun, cstr, x0, algo)
[fopt,[xopt,[grdopt]]]=leastsq([imp], fun [,dfun] [,cstr],x0
  [,algo],[df0,[mem]],[stop])




Parameters
~~~~~~~~~~


+ **fopt** : value of the function *f(x)=||fun(x)||^2* at **xopt**
+ **xopt** : best value of **x** found to minimize *||fun(x)||^2*
+ **grdopt** : gradient of *f* at **xopt**
+ **fun** : a scilab function or a list defining a function from *R^n*
  to *R^m* (see more details in DESCRIPTION).
+ **x0** : real vector (initial guess of the variable to be
  minimized).
+ **dfun** : a scilab function or a string defining the Jacobian
  matrix of **fun** (see more details in DESCRIPTION).
+ **cstr** : bound constraints on **x** . They must be introduced by
  the string keyword 'b' followed by the lower bound binf then by the
  upper bound bsup (so **cstr** appears as **'b',binf,bsup** in the
  calling sequence). Those bounds are real vectors with same dimension
  than **x0** (-%inf and +%inf may be used for dimension which are
  unrestricted).
+ **algo** : a string with possible values: 'qn' or 'gc' or 'nd' .
  These strings stand for quasi-Newton (default), conjugate gradient or
  non-differentiable respectively. Note that 'nd' does not accept bounds
  on **x** .
+ **imp** : scalar argument used to set the trace mode. **imp=0**
  nothing (except errors) is reported, **imp=1** initial and final
  reports, **imp=2** adds a report per iteration, **imp>2** add reports
  on linear search. Warning, most of these reports are written on the
  Scilab standard output.
+ **df0** : real scalar. Guessed decreasing of *||fun||^2* at first
  iteration. ( df0=1 is the default value).
+ **mem** : integer, number of variables used to approximate the
  Hessean (second derivatives) of *f* when **algo** ='qn' . Default
  value is around 6.
+ **stop** : sequence of optional parameters controlling the
  convergence of the algorithm. They are introduced by the keyword 'ar'
  , the sequence being of the form **'ar',nap, [iter [,epsg [,epsf
  [,epsx]]]]**

    + **nap** : maximum number of calls to **fun** allowed.
    + **iter** : maximum number of iterations allowed.
    + **epsg** : threshold on gradient norm.
    + **epsf** : threshold controlling decreasing of **f**
    + **epsx** : threshold controlling variation of **x** . This vector
      (possibly matrix) of same size as **x0** can be used to scale **x** .





Description
~~~~~~~~~~~

*fun* being a function from *R^n* to *R^m* this routine tries to
minimize w.r.t. *x*, the function:


::

    
                               _m_     
                          2    \      2
         f(x) = ||fun(x)||  =  /   fun (x)
                               ---    i
                               i=1     
              

which is the sum of the squares of the components of *fun*. Bound
constraints may be imposed on **x** .


How to provide fun and dfun
~~~~~~~~~~~~~~~~~~~~~~~~~~~

**fun** can be either a usual scilab function (case 1) or a fortran or
a C routine linked to scilab (case 2). For most problems the
definition of *fun* will need supplementary parameters and this can be
done in both cases.
