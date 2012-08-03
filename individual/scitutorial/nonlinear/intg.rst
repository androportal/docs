====
"intg"
====

Scilab Function Last update : 06/10/2005
**intg** - definite integral



Calling Sequence
~~~~~~~~~~~~~~~~

[v,err]=intg(a,b,f [,ea [,er])




Parameters
~~~~~~~~~~


+ **a,b** : real numbers
+ **f** : external (function or list or string)
+ **ea, er** : real numbers
+ **ea** : absolute error required on the result. Default value:
  1.d-14
+ **er** : relative error required on the result. Default value: 1.d-8
+ **err** : estimated absolute error on the result.




Description
~~~~~~~~~~~

**intg(a,b,f)** evaluates the definite integral from **a** to **b** of
**f(t)dt** . The function **f(t)** should be continuous.

The evaluation hopefully satisfies following claim for accuracy:
**abs(I-v)<= max(ea,er*abs(I))** where I stands for the exact value of
the integral.

**f** is an external :

If **f** is function its definition must be as follows ** y = f(t) **

If **f** is a list the list must be as follows: ** list(f,x1,x2,...)**
where **f** is a function with calling sequence **f(t,x1,x2,...)** .

If **f** is a string it refers to a the name of a Fortran function or
a C prodedure with a given calling sequence:

In the fortran case the calling sequence should be **double precision
function f(x)** where **x** is also a double precision number.

In the C case the calling sequence should be **double f(double *x)** .



Examples
~~~~~~~~


::

    
    
    //Scilab function case
    function y=f(x),y=x*sin(30*x)/sqrt(1-((x/(2*%pi))^2)),endfunction
    exact=-2.5432596188;
    I=intg(0,2*%pi,f)
    abs(exact-I)
    
    //Scilab function case with parameter
    function y=f1(x,w),y=x*sin(w*x)/sqrt(1-((x/(2*%pi))^2)),endfunction
    I=intg(0,2*%pi,list(f1,30))
    abs(exact-I)
    
    
    // Fortran code case (Fortran compiler required)
    // write down the fortran code
    F=['      double precision function ffun(x)'
       '      double precision x,pi'
       '      pi=3.14159265358979312d+0'
       '      ffun=x*sin(30.0d+0*x)/sqrt(1.0d+0-(x/(2.0d+0*pi))**2)'
       '      return'
       '      end'];
    mputl(F,TMPDIR+'/ffun.f')
    // compile the fortran code
    l=ilib_for_link('ffun','ffun.o',[],'f',TMPDIR+'/Makefile');
    // incremental linking
    link(l,'ffun','f')
    //integrate the function
    I=intg(0,2*%pi,'ffun')
    abs(exact-I)
    
    // C code case (C compiler required)
    // write down the C code
    C=['#include <math.h>'
       'double cfun(double *x)'
       '{'
       '  double y,pi=3.14159265358979312;'
       '  y=*x/(2.0e0*pi);'
       '  return *x*sin(30.0e0**x)/sqrt(1.0e0-y*y);'
       '}'];
    mputl(C,TMPDIR+'/cfun.c')
    // compile the C code
    l=ilib_for_link('cfun','cfun.o',[],'c',TMPDIR+'/Makefile');
    // incremental linking
    link(l,'cfun','c')
    //integrate the function
    I=intg(0,2*%pi,'cfun')
    abs(exact-I)
    
     
      




See Also
~~~~~~~~

` **intc** `_,` **intl** `_,` **inttrap** `_,` **intsplin** `_,`
**ode** `_,



Used Function
~~~~~~~~~~~~~

The associated routines can be found in routines/integ directory :

dqag0.f and dqags.f from quadpack

.. _
      : ://./nonlinear/intl.htm
.. _
      : ://./nonlinear/intc.htm
.. _
      : ://./nonlinear/../elementary/inttrap.htm
.. _
      : ://./nonlinear/../elementary/intsplin.htm
.. _
      : ://./nonlinear/ode.htm


