


coff
====

resolvent (cofactor method)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [N,d]=coff(M [,var])




Arguments
~~~~~~~~~

:M square real matrix
: :var character string
: :N polynomial matrix (same size as `M`)
: :d polynomial (characteristic polynomial `poly(A,'s')`)
:



Description
~~~~~~~~~~~

`coff` computes R= `(s*eye()-M)^-1` for `M` a real matrix. R is given
by `N/d`.

`N` = numerator polynomial matrix.

`d` = common denominator.

`var` character string (' `s`' if omitted)



Examples
~~~~~~~~


::

    M=[1,2;0,3];
    [N,d]=coff(M)
    N/d
    `inv`_(%s*`eye`_()-M)




See Also
~~~~~~~~


+ `coffg`_ inverse of polynomial matrix
+ `ss2tf`_ conversion from state-space to transfer function
+ `nlev`_ Leverrier's algorithm
+ `poly`_ polynomial definition


.. _coffg: coffg.html
.. _nlev: nlev.html
.. _poly: poly.html
.. _ss2tf: ss2tf.html


