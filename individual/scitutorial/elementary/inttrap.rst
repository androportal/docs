====
"inttrap"
====

Scilab Function Last update : April 1993
**inttrap** - integration of experimental data by trapezoidal
interpolation



Calling Sequence
~~~~~~~~~~~~~~~~

v = inttrap([x,] s)




Parameters
~~~~~~~~~~


+ **x** : vector of increasing x coordinate data. Default value is
  **1:size(y,'*')**
+ **s** : vector of y coordinate data
+ **v** : value of the integral




Description
~~~~~~~~~~~

computes :

Where f is a function described by a set of experimental value:

**s(i)=f(x(i))** and **x0=x(1)** , **x1=x(n)**

Between mesh points function is interpolated linearly.



Examples
~~~~~~~~


::

    
    
    t=0:0.1:%pi
    inttrap(t,sin(t))
     
      




See Also
~~~~~~~~

` **intg** `_,` **intc** `_,` **intl** `_,` **integrate** `_,`
**intsplin** `_,` **splin** `_,

.. _
      : ://./elementary/../nonlinear/intc.htm
.. _
      : ://./elementary/../nonlinear/intl.htm
.. _
      : ://./elementary/integrate.htm
.. _
      : ://./elementary/intsplin.htm
.. _
      : ://./elementary/splin.htm
.. _
      : ://./elementary/../nonlinear/intg.htm


