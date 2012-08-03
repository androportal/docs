====
"norm"
====

Scilab Function Last update : April 1993
**norm** - matrix norms



Calling Sequence
~~~~~~~~~~~~~~~~

[y]=norm(x [,flag])




Parameters
~~~~~~~~~~


+ **x** : real or complex vector or matrix (full or sparse storage)
+ **flag** : string (type of norm) (default value =2)




Description
~~~~~~~~~~~

For matrices

**norm(x)**: or **norm(x,2)** is the largest singular value of **x** (
  **max(svd(x))** ).
**norm(x,1)**: The l_1 norm **x** (the largest column sum :
  **maxi(sum(abs(x),'r'))** ).
**norm(x,'inf'),norm(x,%inf)**: The infinity norm of **x** (the
  largest row sum : **maxi(sum(abs(x),'c'))** ).
**norm(x,'fro')**: Frobenius norm i.e. **sqrt(sum(diag(x'*x)))**


For vectors

**norm(v,p)**: l_p norm ( **sum(v(i)^p))^(1/p)** .
**norm(v)**: **=norm(v,2)** : l_2 norm
**norm(v,'inf')**: **max(abs(v(i)))** .




Examples
~~~~~~~~


::

    
    
    A=[1,2,3];
    norm(A,1)
    norm(A,'inf')
    A=[1,2;3,4]
    max(svd(A))-norm(A)
    
    A=sparse([1 0 0 33 -1])
    norm(A)
    
     
      




See Also
~~~~~~~~

` **h_norm** `_,` **dhnorm** `_,` **h2norm** `_,` **abs** `_,

.. _
      : ://./elementary/../robust/dhnorm.htm
.. _
      : ://./elementary/abs.htm
.. _
      : ://./elementary/../robust/h2norm.htm
.. _
      : ://./elementary/../robust/h_norm.htm


