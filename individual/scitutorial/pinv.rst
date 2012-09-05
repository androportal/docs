


pinv
====

pseudoinverse



Calling Sequence
~~~~~~~~~~~~~~~~


::

    pinv(A,[tol])




Arguments
~~~~~~~~~

:A real or complex matrix
: :tol real number
:



Description
~~~~~~~~~~~

`X= pinv(A)` produces a matrix `X` of the same dimensions as `A'` such
that:

`A*X*A = A, X*A*X = X` and both `A*X` and `X*A` are Hermitian .

The computation is based on SVD and any singular values lower than a
tolerance are treated as zero: this tolerance is accessed by
`X=pinv(A,tol)`.



Examples
~~~~~~~~


::

    A=`rand`_(5,2)*`rand`_(2,4);
    `norm`_(A*pinv(A)*A-A,1)




See Also
~~~~~~~~


+ `rank`_ rank
+ `svd`_ singular value decomposition
+ `qr`_ QR decomposition




Used Functions
~~~~~~~~~~~~~~

`pinv` function is based on the singular value decomposition (Scilab
function `svd`).

.. _svd: svd.html
.. _rank: rank.html
.. _qr: qr.html


