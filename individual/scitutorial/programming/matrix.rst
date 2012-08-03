====
"matrix"
====

Scilab Function Last update : April 1993
**matrix** - reshape a vector or a matrix to a different size matrix



Calling Sequence
~~~~~~~~~~~~~~~~

y=matrix(v,n,m)
y=matrix(v,[sizes])




Parameters
~~~~~~~~~~


+ **v** : a vector, a matrix or an hypermatrix
+ **n,m** : integers
+ **sizes** : vector of integers
+ **y** : a vector, a matrix or hypermatrix




Description
~~~~~~~~~~~

For a vector or a matrix with **n** x **m** entries, the command
**y=matrix(v,n,m)** or similarily **y=matrix(v,[n,m])** transforms the
**v** vector (or matrix) into an **nxm** matrix by stacking columnwise
the entries of **v** .

if one of the dimension m or n is equal to -1 it is automatically
assigned to the quotient of size(v,'*') by the other dimension,

For an hypermatrix such as **prod(size(v))==prod(sizes)** , the
command **y=matrix(v,sizes)** (or equivalently
**y=matrix(v,n1,n2,...nm)** ) transforms **v** into an matrix or
hypermatrix by stacking "columnwise" (first dimension is varying
first) the entries of **v** . **y=matrix(v,sizes)** results in a
regular matrix if sizes is a scalar or a 2-vector.



Examples
~~~~~~~~


::

    
    
    a=[1 2 3;4 5 6]
    matrix(a,1,6)
    matrix(a,1,-1)
    matrix(a,3,2)
     
      




See Also
~~~~~~~~

` **matrices** `_,` **hypermatrices** `_,` **ones** `_,` **zeros**
`_,` **rand** `_,` **poly** `_,` **empty** `_,

.. _
      : ://./programming/hypermatrices.htm
.. _
      : ://./programming/../elementary/ones.htm
.. _
      : ://./programming/../elementary/zeros.htm
.. _
      : ://./programming/../elementary/rand.htm
.. _
      : ://./programming/empty.htm
.. _
      : ://./programming/matrices.htm
.. _
      : ://./programming/poly.htm


