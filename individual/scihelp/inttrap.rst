


inttrap
=======

integration of experimental data by trapezoidal interpolation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    v = inttrap([x,] s)




Arguments
~~~~~~~~~

:x vector of increasing x coordinate data. Default value is
  `1:size(s,'*')`
: :s vector of y coordinate data
: :v value of the integral
:



Description
~~~~~~~~~~~

Computes:

`s(i)=f(x(i))` and `x0=x(1)`, `x1=x(n)`

where `f` is a function described by a set of experimental values.

Between mesh points function is interpolated linearly.



Examples
~~~~~~~~


::

    t=0:0.1:%pi
    inttrap(t,`sin`_(t))




See Also
~~~~~~~~


+ `intg`_ definite integral
+ `intc`_ Cauchy integral
+ `intl`_ Cauchy integral
+ `integrate`_ integration of an expression by quadrature
+ `intsplin`_ integration of experimental data by spline interpolation
+ `splin`_ cubic spline interpolation


.. _intl: intl.html
.. _intg: intg.html
.. _splin: splin.html
.. _intc: intc.html
.. _integrate: integrate.html
.. _intsplin: intsplin.html


