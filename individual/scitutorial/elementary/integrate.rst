====
"integrate"
====

Scilab Function Last update : 23/06/2004
**integrate** - integration by quadrature



Calling Sequence
~~~~~~~~~~~~~~~~

[x]=integrate(expr,v,x0,x1 [,ea [,er]])




Parameters
~~~~~~~~~~


+ **expr** : external Scilab
+ **v** : string (integration variable)
+ **x0,x1** : real numbers (bounds of integration)
+ **ea,er** : real numbers (absolute error bound) Default value: 0
+ **er** : real number, (relative error bound) Default value: 1.d-8




Description
~~~~~~~~~~~

computes :


::

    
                           /x1
                          [
                      x = I  f(v)dv
                          ]
                         /x0
          


The evaluation hopefully satisfies following claim for accuracy:
**abs(I-x)<= max(ea,er*abs(I))** where I stands for the exact value of
the integral.



Examples
~~~~~~~~


::

    
    
    integrate('sin(x)','x',0,%pi)
    integrate(['if x==0 then 1,';
               'else sin(x)/x,end'],'x',0,%pi)
     
      




See Also
~~~~~~~~

` **intg** `_,` **inttrap** `_,` **intsplin** `_,` **ode** `_,

.. _
      : ://./elementary/inttrap.htm
.. _
      : ://./elementary/intsplin.htm
.. _
      : ://./elementary/../nonlinear/intg.htm
.. _
      : ://./elementary/../nonlinear/ode.htm


