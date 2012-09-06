


sqroot
======

W*W' hermitian factorization



Calling Sequence
~~~~~~~~~~~~~~~~


::

    sqroot(X)




Arguments
~~~~~~~~~

:X symmetric non negative definite real or complex matrix
:



Description
~~~~~~~~~~~

returns W such that `X=W*W'` (uses SVD).



Examples
~~~~~~~~


::

    X=`rand`_(5,2)*`rand`_(2,5);X=X*X';
    W=sqroot(X)
    `norm`_(W*W'-X,1)
    
    X=`rand`_(5,2)+%i*`rand`_(5,2);X=X*X';
    W=sqroot(X)
    `norm`_(W*W'-X,1)




See Also
~~~~~~~~


+ `chol`_ Cholesky factorization
+ `svd`_ singular value decomposition


.. _chol: chol.html
.. _svd: svd.html


