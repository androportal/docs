


intg
====

definite integral



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [v,err]=intg(a,b,f [,ea [,er])




Arguments
~~~~~~~~~

:a, b real numbers.
: :f external (function or list or string).
: :ea, er real numbers.
: :ea absolute error required on the result. Default value: 1.d-14.
: :er relative error required on the result. Default value: 1.d-8.
: :err estimated absolute error on the result.
:



Description
~~~~~~~~~~~

`intg(a,b,f)` evaluates the definite integral from `a` to `b` of
`f(t)dt`. The function `f(t)` should be continuous.

The evaluation hopefully satisfies following claim for accuracy:
`abs(I-v)<= max(ea,er*abs(I))` where `I` stands for the exact value of
the integral.

`f` is an external :

If `f` is function its definition must be as follows `y = f(t)`

If `f` is a list the list must be as follows: `list(f,x1,x2,...)`
where `f` is a function with calling sequence `f(t,x1,x2,...)`.

If `f` is a string it refers to a the name of a Fortran function or a
C prodedure with a given calling sequence:

In the fortran case the calling sequence should be `double precision
function f(x)` where `x` is also a double precision number.

In the C case the calling sequence should be `double f(double *x)` .



Examples
~~~~~~~~


::

    // Function written in the Scilab language
    function y=f(x),y=x*`sin`_(30*x)/`sqrt`_(1-((x/(2*%pi))^2)),endfunction
    exact=-2.5432596188;
    I=intg(0,2*%pi,f)
    `abs`_(exact-I)
    
    // Function with an argument written in the Scilab language
    function y=f1(x, w),y=x*`sin`_(w*x)/`sqrt`_(1-((x/(2*%pi))^2)),endfunction
    I=intg(0,2*%pi,`list`_(f1,30))
    `abs`_(exact-I)
    
    // Function written in Fortran (a Fortran compiler is required)
    // define a Fortran function
    `cd`_ TMPDIR;
    F=['      double precision function ffun(x)'
       '      double precision x,pi'
       '      pi=3.14159265358979312d+0'
       '      ffun=x*sin(30.0d+0*x)/sqrt(1.0d+0-(x/(2.0d+0*pi))**2)'
       '      return'
       '      end'];
    `mputl`_(F,`fullfile`_(TMPDIR,'ffun.f'))
    
    // compile the function
    l=`ilib_for_link`_('ffun',`fullfile`_(TMPDIR,'ffun.f'),[],'f');
    
    // add the function to the working environment
    `link`_(l,'ffun','f')
    
    // integrate the function
    I=intg(0,2*%pi,'ffun')
    `abs`_(exact-I)
    
    // Function written in C (a C compiler is required)
    // define a C function
    C=['#include <math.h>'
       'double cfun(double *x)'
       '{'
       '  double y,pi=3.14159265358979312;'
       '  y=*x/(2.0e0*pi);'
       '  return *x*sin(30.0e0**x)/sqrt(1.0e0-y*y);'
       '}'];
    `mputl`_(C,`fullfile`_(TMPDIR,'cfun.c'))
    
    // compile the function
    l=`ilib_for_link`_('cfun',`fullfile`_(TMPDIR,'cfun.c'),[],'c');
    
    // add the function to the working environment
    `link`_(l,'cfun','c')
    
    // integrate the function
    I=intg(0,2*%pi,'cfun')
    `abs`_(exact-I)




See Also
~~~~~~~~


+ `intc`_ Cauchy integral
+ `intl`_ Cauchy integral
+ `inttrap`_ integration of experimental data by trapezoidal
  interpolation
+ `intsplin`_ integration of experimental data by spline interpolation
+ `ode`_ ordinary differential equation solver




Used Functions
~~~~~~~~~~~~~~

The associated routines can be found in
SCI/modules/differential_equations/src/fortran directory :

dqag0.f and dqags.f from quadpack

.. _intl: intl.html
.. _ode: ode.html
.. _intc: intc.html
.. _inttrap: inttrap.html
.. _intsplin: intsplin.html


