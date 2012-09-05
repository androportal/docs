


intsplin
========

integration of experimental data by spline interpolation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    v = intsplin([x,] s)




Arguments
~~~~~~~~~

:x vector of increasing `x` coordinate data. Default value is
  `1:size(y,'*')`.
: :s vector of `y` coordinate data.
: :v value of the integral.
:



Description
~~~~~~~~~~~

Сomputes :

Where `f` is a function described by a set of experimental value:

`s(i)=f(x(i))` and `x0=x(1)`, `x1=x(n)`.

Between mesh points function is interpolated using spline's.



Examples
~~~~~~~~


::

    t=0:0.1:%pi
    intsplin(t,`sin`_(t))




See Also
~~~~~~~~


+ `intg`_ definite integral
+ `integrate`_ integration of an expression by quadrature
+ `inttrap`_ integration of experimental data by trapezoidal
  interpolation
+ `splin`_ cubic spline interpolation


.. _splin: splin.html
.. _inttrap: inttrap.html
.. _integrate: integrate.html
.. _intg: intg.html


