====
"pinv"
====

Scilab Function Last update : April 1993
**pinv** - pseudoinverse



Calling Sequence
~~~~~~~~~~~~~~~~

pinv(A,[tol])




Parameters
~~~~~~~~~~


+ **A** : real or complex matrix
+ **tol** : real number




Description
~~~~~~~~~~~

**X = pinv(A)** produces a matrix **X** of the same dimensions as
**A'** such that:

**A*X*A = A, X*A*X = X** and both **A*X** and **X*A** are Hermitian .

The computation is based on SVD and any singular values lower than a
tolerance are treated as zero: this tolerance is accessed by
**X=pinv(A,tol)** .



Examples
~~~~~~~~


::

    
    
    A=rand(5,2)*rand(2,4);
    norm(A*pinv(A)*A-A,1)
     
      




See Also
~~~~~~~~

` **rank** `_,` **svd** `_,` **qr** `_,



Used Function
~~~~~~~~~~~~~

**pinv** function is based on the singular value decomposition (Scilab
function **svd** ).

.. _
      : ://./linear/rank.htm
.. _
      : ://./linear/qr.htm
.. _
      : ://./linear/svd.htm


