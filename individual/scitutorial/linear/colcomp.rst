====
"colcomp"
====

Scilab Function Last update : April 1993
**colcomp** - column compression, kernel, nullspace



Calling Sequence
~~~~~~~~~~~~~~~~

[W,rk]=colcomp(A [,flag] [,tol])




Parameters
~~~~~~~~~~


+ **A** : real or complex matrix
+ **flag** : character string
+ **tol** : real number
+ **W** : square non-singular matrix (change of basis)
+ **rk** : integer (rank of **A** )




Description
~~~~~~~~~~~

Column compression of **A** : **Ac = A*W** is column compressed i.e

**Ac=[0,Af]** with **Af** full column rank, rank( **Af** ) = rank(
**A** ) = **rk** .

**flag** and **tol** are optional parameters: **flag = 'qr'** or
**'svd'** (default is **'svd'** ).

**tol** = tolerance parameter (of order **%eps** as default value).

The **ma-rk** first columns of **W** span the kernel of **A** when
**size(A)=(na,ma)**



Examples
~~~~~~~~


::

    
    
    A=rand(5,2)*rand(2,5);
    [X,r]=colcomp(A);
    norm(A*X(:,1:$-r),1)
     
      




See Also
~~~~~~~~

` **rowcomp** `_,` **fullrf** `_,` **fullrfk** `_,` **kernel** `_,



Author
~~~~~~

F.D.;

.. _
      : ://./linear/kernel.htm
.. _
      : ://./linear/fullrfk.htm
.. _
      : ://./linear/rowcomp.htm
.. _
      : ://./linear/fullrf.htm


