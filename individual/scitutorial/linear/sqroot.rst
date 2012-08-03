====
"sqroot"
====

Scilab Function Last update : April 1993
**sqroot** - W*W' hermitian factorization



Calling Sequence
~~~~~~~~~~~~~~~~

sqroot(X)




Parameters
~~~~~~~~~~


+ **X** : symmetric non negative definite real or complex matrix




Description
~~~~~~~~~~~

returns W such that **X=W*W'** (uses SVD).



Examples
~~~~~~~~


::

    
    
    X=rand(5,2)*rand(2,5);X=X*X';
    W=sqroot(X)
    norm(W*W'-X,1)
    //
    X=rand(5,2)+%i*rand(5,2);X=X*X';
    W=sqroot(X)
    norm(W*W'-X,1)
     
      




See Also
~~~~~~~~

` **chol** `_,` **svd** `_,

.. _
      : ://./linear/chol.htm
.. _
      : ://./linear/svd.htm


