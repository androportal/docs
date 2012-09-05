


simp
====

rational simplification



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [N1,D1]=simp(N,D)
    H1=simp(H)




Arguments
~~~~~~~~~

:N,D real polynomials or real matrix polynomials
: :H rational matrix (i.e matrix with entries `n/d` , `n` and `d` real
  polynomials)
:



Description
~~~~~~~~~~~

`[n1,d1]=simp(n,d)` calculates two polynomials `n1` and `d1` such that
`n1/d1 = n/d`.

If `N` and `D` are polynomial matrices the calculation is performed
element-wise.

`H1=simp(H)` is also valid (each entry of `H` is simplified in `H1`).

Caution:

-no threshold is given i.e. `simp` cannot forces a simplification.

-For linear dynamic systems which include integrator(s) simplification
changes the static gain. ( `H(0)` for continuous systems or `H(1)` for
discrete systems)

-for complex data, `simp` returns its input(s).

-rational simplification is called after nearly each operations on
rationals. It is possible to toggle simplification on or off using
`simp_mode` function.



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    [n,d]=simp((s+1)*(s+2),(s+1)*(s-2))
    
    `simp_mode`_(%F);hns=s/s
    `simp_mode`_(%T);hns=s/s




See Also
~~~~~~~~


+ `roots`_ roots of polynomials
+ `trfmod`_ poles and zeros display
+ `poly`_ polynomial definition
+ `clean`_ cleans matrices (round to zero small entries)
+ `simp_mode`_ toggle rational simplification


.. _clean: clean.html
.. _simp_mode: simp_mode.html
.. _poly: poly.html
.. _trfmod: trfmod.html
.. _roots: roots.html


