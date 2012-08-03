====
"mini"
====

Scilab Function Last update : 02/11/2005
**mini** - minimum



Calling Sequence
~~~~~~~~~~~~~~~~

[m [,k]]=mini(A)
[m [,k]]=mini(A,'c')
[m [,k]]=mini(A,'r')
[m [,k]]=mini(A,'m')
[m [,k]]=mini(A1,A2,...,An)
[m [,k]]=mini(list(A1,A2,...,An))




Parameters
~~~~~~~~~~


+ **A** : real vector or matrix.
+ **A1,...,An** : a set of real vectors or matrices, all of the same
  size or scalar.




Description
~~~~~~~~~~~

For **A** , a real vector or matrix, **mini(A)** is the largest
element **A** . **[m,k]=mini(A)** gives in addition the index of the
minimum. A second argument of type string **'r'** or **'c'** can be
used : **'r'** is used to get a row vector **m** such that **m(j)**
contains the minimum of the **j** th column of A ( **A(:,j)** ),
**k(j)** gives the row indice which contain the minimum for column
**j** . **'c'** is used for the dual operation on the rows of **A** .
**'m'** is used for compatibility with Matlab.

**m=mini(A1,A2,...,An)** , where all the **Aj** are matrices of the
same sizes,returns a vector or a matrix **m** of size
**size(m)=size(A1)** such that **m(i)= mini( Aj(i)), j=1,...,n** .
**[m,k]=mini(A1,A2,...,An)** gives in addition the vector or matrix
**k** . for a fixed **i** , **k(i)** is the number of the first
**Aj(i)** achieving the minimum.

**[m,k]=mini(list(A1,...,An))** is an equivalent syntax of
**[m,k]=mini(A1,A2,...,An)**



Examples
~~~~~~~~


::

    
    
    [m,n]=mini([1,3,1])
    [m,n]=mini([3,1,1],[1,3,1],[1,1,3])
    [m,n]=mini([3,-2,1],1)
    [m,n]=mini(list([3,1,1],[1,3,1],[1,1,3]))
    [m,n]=mini(list(1,3,1))
     
      




See Also
~~~~~~~~

` **sort** `_,` **find** `_,` **min** `_,

.. _
      : ://./elementary/../programming/find.htm
.. _
      : ://./elementary/sort.htm
.. _
      : ://./elementary/min.htm


