


find_freq
=========

parameter compatibility for elliptic filter design



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [m]=find_freq(epsilon,A,n)




Arguments
~~~~~~~~~

:epsilon passband ripple
: :A stopband attenuation
: :n filter order
: :m frequency needed for construction of elliptic filter
:



Description
~~~~~~~~~~~

Search for m such that `n=K(1-m1)K(m)/(K(m1)K(1-m))` with

`m1=(epsilon*epsilon)/(A*A-1)`;

If `m = omegar^2/omegac^2`, the parameters `epsilon,A,omegac,omegar`
and `n` are then compatible for defining a prototype elliptic filter.
Here, `K=%k(m)` is the complete elliptic integral with parameter `m`.



See Also
~~~~~~~~


+ `%k`_ Jacobi's complete elliptic integral


.. _%k: percentk.html


