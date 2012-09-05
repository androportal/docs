


inv
===

matrix inverse



Calling Sequence
~~~~~~~~~~~~~~~~


::

    inv(X)




Arguments
~~~~~~~~~

:X real or complex square matrix, polynomial matrix, rational matrix
  in transfer or state-space representation.
:



Description
~~~~~~~~~~~

`inv(X)` is the inverse of the square matrix `X`. A warning message is
printed if `X` is badly scaled or nearly singular.

For polynomial matrices or rational matrices in transfer
representation, `inv(X)` is equivalent to `invr(X)`.

For linear systems in state-space representation ( `syslin` list),
`invr(X)` is equivalent to `invsyslin(X)`.



References
~~~~~~~~~~

`inv` function for matrices of numbers is based on the Lapack routines
DGETRF, DGETRI for real matrices and ZGETRF, ZGETRI for the complex
case. For polynomial matrix and rational function matrix `inv` is
based on the `invr` Scilab function.



Examples
~~~~~~~~


::

    A=`rand`_(3,3);inv(A)*A
    
    x=`poly`_(0,'x');
    A=[x,1,x;x^2,2,1+x;1,2,3];inv(A)*A
    
    A=[1/x,2;2+x,2/(1+x)]
    inv(A)*A
    
    A=`ssrand`_(2,2,3);
    W=inv(A)*A
    `clean`_(`ss2tf`_(W))




See Also
~~~~~~~~


+ `slash`_ (/) right division and feed back
+ `backslash`_ (\) left matrix division.
+ `pinv`_ pseudoinverse
+ `qr`_ QR decomposition
+ `lufact`_ sparse lu factorization
+ `lusolve`_ sparse linear system solver
+ `invr`_ inversion of (rational) matrix
+ `coff`_ resolvent (cofactor method)
+ `coffg`_ inverse of polynomial matrix


.. _coffg: coffg.html
.. _coff: coff.html
.. _invr: invr.html
.. _lusolve: lusolve.html
.. _backslash: backslash.html
.. _qr: qr.html
.. _pinv: pinv.html
.. _slash: slash.html
.. _lufact: lufact.html


