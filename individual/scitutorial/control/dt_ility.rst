====
"dt_ility"
====

Scilab Function Last update : April 1993
**dt_ility** - detectability test



Calling Sequence
~~~~~~~~~~~~~~~~

[k, [n [,U [,Sld ] ] ]]=dt_ility(Sl [,tol])




Parameters
~~~~~~~~~~


+ **Sl** : linear system ( **syslin** list)
+ **n** : dimension of unobservable subspace
+ **k** : dimension of unstable, unobservable subspace ( ** k<=n** ).
+ **U** : orthogonal matrix
+ **Sld** : linear system ( **syslin** list)
+ **tol** : threshold for controllability test.




Description
~~~~~~~~~~~

Detectability test for **sl** , a linear system in state-space
representation. **U** is a basis whose **k** first columns span the
unstable, unobservable subspace of **Sl** (intersection of
unobservable subspace of **(A,C)** and unstable subspace of **A** ).
Detectability means **k=0** .

**Sld = (U'*A*U,U'*B,C*U,D)** displays the "detectable part" of
**Sl=(A,B,C,D)** , i.e.


::

    
    
             [*,*,*]
    U'*A*U = [0,*,*]
             [0,0,*]
     
    C*U = [0,0,*]
       
        


with **(A33,C3)** observable (dimension **nx-n** ), **A22** stable
(dimension **n-k** ) and **A11** unstable (dimension **k** ).



Examples
~~~~~~~~


::

    
    
    A=[2,1,1;0,-2,1;0,0,3];
    C=[0,0,1];
    X=rand(3,3);A=inv(X)*A*X;C=C*X;
    W=syslin('c',A,[],C);
    [k,n,U,W1]=dt_ility(W);
    W1("A")
    W1("C")
     
      




See Also
~~~~~~~~

` **contr** `_,` **st_ility** `_,` **unobs** `_,` **stabil** `_,

.. _
      : ://./control/st_ility.htm
.. _
      : ://./control/contr.htm
.. _
      : ://./control/stabil.htm
.. _
      : ://./control/unobs.htm


