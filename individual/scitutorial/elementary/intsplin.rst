====
"intsplin"
====

Scilab Function Last update : April 1993
**intsplin** - integration of experimental data by spline
interpolation



Calling Sequence
~~~~~~~~~~~~~~~~

v = intsplin([x,] s)




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

Between mesh points function is interpolated using spline's.



Examples
~~~~~~~~


::

    
    
    t=0:0.1:%pi
    intsplin(t,sin(t))
     
      




See Also
~~~~~~~~

` **intg** `_,` **integrate** `_,` **inttrap** `_,` **splin** `_,

.. _
      : ://./elementary/inttrap.htm
.. _
      : ://./elementary/../nonlinear/intg.htm
.. _
      : ://./elementary/integrate.htm
.. _
      : ://./elementary/splin.htm


