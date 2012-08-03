====
"coeff"
====

Scilab Function Last update : April 1993
**coeff** - coefficients of matrix polynomial



Calling Sequence
~~~~~~~~~~~~~~~~

[C]=coeff(Mp [,v])




Parameters
~~~~~~~~~~


+ **Mp** : polynomial matrix
+ **v** : integer (row or column) vector of selected degrees
+ **C** : big matrix of the coefficients




Description
~~~~~~~~~~~

**C=coeff(Mp)** returns in a big matrix **C** the coefficients of the
polynomial matrix **Mp** . **C** is partitioned as
**C=[C0,C1,...,Ck]** where the **Ci** are arranged in increasing order
**k = maxi(degree(Mp))**

**C=coeff(Mp,v)** returns the matrix of coefficients with degree in
**v** . ( **v** is a row or column vector).



See Also
~~~~~~~~

` **poly** `_,` **degree** `_,` **inv_coeff** `_,



Author
~~~~~~

S. Steer INRIA

.. _
      : ://./polynomials/../programming/poly.htm
.. _
      : ://./polynomials/degree.htm
.. _
      : ://./polynomials/../programming/inv_coeff.htm


