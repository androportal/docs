====
"htrianr"
====

Scilab Function Last update : April 1993
**htrianr** - triangularization of polynomial matrix



Calling Sequence
~~~~~~~~~~~~~~~~

[Ar,U,rk]=htrianr(A)




Parameters
~~~~~~~~~~


+ **A** : polynomial matrix
+ **Ar** : polynomial matrix
+ **U** : unimodular polynomial matrix
+ **rk** : integer, normal rank of **A**




Description
~~~~~~~~~~~

triangularization of polynomial matrix **A** .

**A** is **[m,n]** , **m <= n** .

**Ar=A*U**

Warning: there is an elimination of "small" terms (see function code).



Examples
~~~~~~~~


::

    
    
    x=poly(0,'x');
    M=[x;x^2;2+x^3]*[1,x-2,x^4];
    [Mu,U,rk]=htrianr(M)
    det(U)
    M*U(:,1:2)
     
      




See Also
~~~~~~~~

` **hrmt** `_,` **colcompr** `_,

.. _
      : ://./polynomials/colcompr.htm
.. _
      : ://./polynomials/hrmt.htm


