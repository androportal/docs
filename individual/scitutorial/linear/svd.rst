====
"svd"
====

Scilab Function Last update : 16/12/2004
**svd** - singular value decomposition



Calling Sequence
~~~~~~~~~~~~~~~~

s=svd(X)
[U,S,V]=svd(X)
[U,S,V]=svd(X,0) (obsolete)
[U,S,V]=svd(X,"e")
[U,S,V,rk]=svd(X [,tol])




Parameters
~~~~~~~~~~


+ **X** : a real or complex matrix
+ **s** : real vector (singular values)
+ **S** : real diagonal matrix (singular values)
+ **U,V** : orthogonal or unitary square matrices (singular vectors).
+ **tol** : real number




Description
~~~~~~~~~~~

**[U,S,V] = svd(X)** produces a diagonal matrix **S** , of the same
dimension as **X** and with nonnegative diagonal elements in
decreasing order, and unitary matrices **U** and **V** so that **X =
U*S*V'** .

**[U,S,V] = svd(X,0)** produces the "economy size" decomposition. If
**X** is m-by-n with m > n, then only the first n columns of **U** are
computed and **S** is n-by-n.

**s = svd(X)** by itself, returns a vector **s** containing the
singular values.

**[U,S,V,rk]=svd(X,tol)** gives in addition **rk** , the numerical
rank of **X** i.e. the number of singular values larger than **tol** .

The default value of **tol** is the same as in **rank** .



Examples
~~~~~~~~


::

    
    
    X=rand(4,2)*rand(2,4)
    svd(X)
    sqrt(spec(X*X'))
     
      




See Also
~~~~~~~~

` **rank** `_,` **qr** `_,` **colcomp** `_,` **rowcomp** `_,` **sva**
`_,` **spec** `_,



Used Function
~~~~~~~~~~~~~

svd decompositions are based on the Lapack routines DGESVD for real
matrices and ZGESVD for the complex case.

.. _
      : ://./linear/qr.htm
.. _
      : ://./linear/sva.htm
.. _
      : ://./linear/rowcomp.htm
.. _
      : ://./linear/rank.htm
.. _
      : ://./linear/spec.htm
.. _
      : ://./linear/colcomp.htm


