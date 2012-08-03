====
"rank"
====

Scilab Function Last update : April 1993
**rank** - rank



Calling Sequence
~~~~~~~~~~~~~~~~

[i]=rank(X)
[i]=rank(X,tol)




Parameters
~~~~~~~~~~


+ **X** : real or complex matrix
+ **tol** : nonnegative real number




Description
~~~~~~~~~~~

**rank(X)** is the numerical rank of **X** i.e. the number of singular
values of X that are larger than **norm(size(X),'inf') * norm(X) *
%eps** .

**rank(X,tol)** is the number of singular values of **X** that are
larger than **tol** .

Note that the default value of **tol** is proportional to **norm(X)**
. As a consequence **rank([1.d-80,0;0,1.d-80])** is 2 !.



Examples
~~~~~~~~


::

    
    
    rank([1.d-80,0;0,1.d-80])
    rank([1,0;0,1.d-80])
     
      




See Also
~~~~~~~~

` **svd** `_,` **qr** `_,` **rowcomp** `_,` **colcomp** `_,` **lu**
`_,

.. _
      : ://./linear/qr.htm
.. _
      : ://./linear/rowcomp.htm
.. _
      : ://./linear/lu.htm
.. _
      : ://./linear/svd.htm
.. _
      : ://./linear/colcomp.htm


