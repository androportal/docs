


polfact
=======

minimal factors



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [f]=polfact(p)




Arguments
~~~~~~~~~

:p polynomial
: :f vector `[f0 f1 ... fn]` such that `p=prod(f)`
    :f0 constant
    : :fi polynomial
    :

:



Description
~~~~~~~~~~~

`f=polfact(p)` returns the minimal factors of p i.e. `f=[f0 f1 ...
fn]` such that `p=prod(f)`



See Also
~~~~~~~~


+ `lcm`_ least common multiple
+ `cmndred`_ common denominator form
+ `factors`_ numeric real factorization


.. _lcm: lcm.html
.. _factors: factors.html
.. _cmndred: cmndred.html


