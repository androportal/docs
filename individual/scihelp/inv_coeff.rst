


inv_coeff
=========

build a polynomial matrix from its coefficients



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [P]=inv_coeff(C,[,d,[name])




Arguments
~~~~~~~~~

:C a big matrix of the coefficients
: :d a polynomial matrix degree. The optional parameter with default
  value `d=-1+size(C,'c')/size(C,'r')`
: :name a string giving the polynomial variable name (default value
  `'x'`).
:



Description
~~~~~~~~~~~

`P=inv_coeff(Mp,k)`, when `k` is compatible with `Mp` size, returns a
polynomial matrix of degree `k`. `C=[C0,C1,...,Ck]` and `P= C0 + C1*x
+... +Ck*x^k`.



Examples
~~~~~~~~


::

    A=`int`_(10*`rand`_(2,6))
    // Building a degree 1 polynomial matrix
    P=inv_coeff(A,1)
    `norm`_(`coeff`_(P)-A)
    // Using default value for degree
    P1=inv_coeff(A)
    `norm`_(`coeff`_(P1)-A)




See Also
~~~~~~~~


+ `poly`_ polynomial definition
+ `degree`_ degree of polynomial matrix
+ `coeff`_ coefficients of matrix polynomial


.. _degree: degree.html
.. _coeff: coeff.html
.. _poly: poly.html


