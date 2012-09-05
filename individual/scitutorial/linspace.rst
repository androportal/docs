


linspace
========

linearly spaced vector



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [v]=linspace(x1,x2 [,n])




Arguments
~~~~~~~~~

:x1,x2 real or complex scalars or column vectors
: :n integer: number of requested values. It must be greater or equal
  to 2 (default value = 100)
: :v real or complex row vector
:



Description
~~~~~~~~~~~

Linearly spaced vector. `linspace(x1, x2)` generates a row vector of n
(default value=100) linearly equally spaced points between `x1` and
`x2`. If `x1` or `x2` are complex then `linspace(x1,x2)` returns a row
vector of n complexes, the real (resp. imaginary) parts of the n
complexes are linearly equally spaced between the real (resp.
imaginary) parts of `x1` and `x2.`



Examples
~~~~~~~~


::

    linspace(1,2,10)
    linspace(1+%i,2+2*%i,10)




See Also
~~~~~~~~


+ `logspace`_ logarithmically spaced vector




History
~~~~~~~
Version Description 5.4.0

+ The linspace function accepts column vectors as input argument for
  the two first input arguments. Thanks to Guillaume AZEMA for the
  implementation.
+ The third input argument (n) must be an integer value.


.. _logspace: logspace.html


