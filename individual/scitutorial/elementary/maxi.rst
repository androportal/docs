====
"maxi"
====

Scilab Function Last update : 02/11/2005
**maxi** - maximum



Calling Sequence
~~~~~~~~~~~~~~~~

[m [,k]]=maxi(A)
[m [,k]]=maxi(A,'c')
[m [,k]]=maxi(A,'r')
[m [,k]]=maxi(A,'m')
[m [,k]]=maxi(A1,A2,...,An)
[m [,k]]=maxi(list(A1,A2,...,An))




Parameters
~~~~~~~~~~


+ **A** : real vector or matrix.
+ **A1,...,An** : a set of real vectors or matrices, all of the same
  size or scalar.




Description
~~~~~~~~~~~

For **A** , a real vector or matrix, **maxi(A)** is the largest
element **A** . **[m,k]=maxi(A)** gives in addition the index of the
maximum. A second argument of type string **'r'** or **'c'** can be
used : **'r'** is used to get a row vector **m** such that **m(j)**
contains the maximum of the **j** th column of A ( **A(:,j)** ),
**k(j)** gives the row indice which contain the maximum for column
**j** . **'c'** is used for the dual operation on the rows of **A** .
**'m'** is used for compatibility with Matlab.

**m=maxi(A1,A2,...,An)** , where all the **Aj** are matrices of the
same sizes,returns a vector or a matrix **m** of size
**size(m)=size(A1)** such that **m(i)= maxi( Aj(i)), j=1,...,n** .
**[m,k]=maxi(A1,A2,...,An)** gives in addition the vector or matrix
**k** . for a fixed **i** , **k(i)** is the number of the first
**Aj(i)** achieving the maximum.

**[m,k]=maxi(list(A1,...,An))** is an equivalent syntax of
**[m,k]=maxi(A1,A2,...,An)**



Examples
~~~~~~~~


::

    
    
    [m,n]=maxi([1,3,1])
    [m,n]=maxi([3,1,1],[1,3,1],[1,1,3])
    [m,n]=maxi([3,-2,1],1)
    [m,n]=maxi(list([3,1,1],[1,3,1],[1,1,3]))
    [m,n]=maxi(list(1,3,1))
     
      




See Also
~~~~~~~~

` **sort** `_,` **find** `_,` **mini** `_,

.. _
      : ://./elementary/mini.htm
.. _
      : ://./elementary/../programming/find.htm
.. _
      : ://./elementary/sort.htm


