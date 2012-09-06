


logspace
========

logarithmically spaced vector



Calling Sequence
~~~~~~~~~~~~~~~~


::

    logspace(d1,d2, [n])




Arguments
~~~~~~~~~

:d1,d2 real or complex scalar (special meaning for `%pi`)
: :n integer: number of requested values. It must be greater or equal
  to 2 (default value = 50)
:



Description
~~~~~~~~~~~

returns a row vector of `n` logarithmically equally spaced points
between `10^d1` and `10^d2`. If `d2=%pi` then the points are between
`10^d1` and `pi`.



Examples
~~~~~~~~


::

    logspace(1,2,10)




See Also
~~~~~~~~


+ `linspace`_ linearly spaced vector




History
~~~~~~~
Version Description 5.4.0 The logspace function accepts column vectors
as input argument for the two first input arguments.
.. _linspace: linspace.html


