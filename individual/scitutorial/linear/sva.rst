====
"sva"
====

Scilab Function Last update : April 1993
**sva** - singular value approximation



Calling Sequence
~~~~~~~~~~~~~~~~

[U,s,V]=sva(A,k)
[U,s,V]=sva(A,tol)




Parameters
~~~~~~~~~~


+ **A** : real or complex matrix
+ **k** : integer
+ **tol** : nonnegative real number




Description
~~~~~~~~~~~

Singular value approximation.

**[U,S,V]=sva(A,k)** with **k** an integer >=1, returns **U,S** and
**V** such that **B=U*S*V'** is the best L2 approximation of **A**
with rank( **B** )= **k** .

**[U,S,V]=sva(A,tol)** with **tol** a real number, returns **U,S** and
**V** such that **B=U*S*V'** such that L2-norm of **A-B** is at most
**tol** .



Examples
~~~~~~~~


::

    
    
    A=rand(5,4)*rand(4,5);
    [U,s,V]=sva(A,2);
    B=U*s*V';
    svd(A)
    svd(B)
    clean(svd(A-B))
     
      




See Also
~~~~~~~~

` **svd** `_,

.. _
      : ://./linear/svd.htm


