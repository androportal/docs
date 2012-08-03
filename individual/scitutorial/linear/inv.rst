====
"inv"
====

Scilab Function Last update : April 1993
**inv** - matrix inverse



Calling Sequence
~~~~~~~~~~~~~~~~

inv(X)




Parameters
~~~~~~~~~~


+ **X** : real or complex square matrix, polynomial matrix, rational
  matrix in transfer or state-space representation.




Description
~~~~~~~~~~~

**inv(X)** is the inverse of the square matrix **X** . A warning
message is printed if **X** is badly scaled or nearly singular.

For polynomial matrices or rational matrices in transfer
representation, **inv(X)** is equivalent to **invr(X)** .

For linear systems in state-space representation ( **syslin** list),
**invr(X)** is equivalent to **invsyslin(X)** .



References
~~~~~~~~~~

**inv** function for matrices of numbers is based on the Lapack
routines DGETRF, DGETRI for real matrices and ZGETRF, ZGETRI for the
complex case. For polynomial matrix and rational function matrix
**inv** is based on the **invr** Scilab function.



Examples
~~~~~~~~


::

    
    
    A=rand(3,3);inv(A)*A
    //
    x=poly(0,'x');
    A=[x,1,x;x^2,2,1+x;1,2,3];inv(A)*A
    //
    A=[1/x,2;2+x,2/(1+x)]
    inv(A)*A
    //
    A=ssrand(2,2,3);
    W=inv(A)*A
    clean(ss2tf(W))
     
      




See Also
~~~~~~~~

` **slash** `_,` **backslash** `_,` **pinv** `_,` **qr** `_,`
**lufact** `_,` **lusolve** `_,` **invr** `_,` **coff** `_,` **coffg**
`_,

.. _
      : ://./linear/coff.htm
.. _
      : ://./linear/qr.htm
.. _
      : ://./linear/lufact.htm
.. _
      : ://./linear/../programming/backslash.htm
.. _
      : ://./linear/../programming/slash.htm
.. _
      : ://./linear/../polynomials/invr.htm
.. _
      : ://./linear/../polynomials/coffg.htm
.. _
      : ://./linear/lusolve.htm
.. _
      : ://./linear/pinv.htm


