====
"diag"
====

Scilab Function Last update : April 1993
**diag** - diagonal including or extracting



Calling Sequence
~~~~~~~~~~~~~~~~

[y]=diag(vm, [k])




Parameters
~~~~~~~~~~


+ **vm** : vector or matrix (full or sparse storage)
+ **k** : integer (default value 0)
+ **y** : vector or matrix




Description
~~~~~~~~~~~

for **vm** a (row or column) n-vector **diag(vm)** returns a diagonal
matrix with entries of **vm** along the main diagonal.

**diag(vm,k)** is a **(n+abs(k))x(n+abs(k))** matrix with the entries
of **vm** along the kth diagonal. **k=0** is the main diagonal **k>0**
is for upper diagonals and **k<0** for lower diagonals.

For a matrix **vm** , **diag(vm,k)** is the column vector made of
entries of the kth diagonal of **vm** . **diag(vm)** is the main
diagonal of **vm** . **diag(diag(x))** is a diagonal matrix.

If **vm** is a sparse matrix **diag(vm,k)** returns a sparse matrix.

To construct a diagonal linear system, use **sysdiag** .

Note that **eye(A).*A** returns a diagonal matrix made with the
diagonal entries of **A** . This is valid for any matrix (constant,
polynomial, rational, state-space linear system,...).



Examples
~~~~~~~~


::

    
    
    diag([1,2])
    
    A=[1,2;3,4];
    diag(A)  // main diagonal
    diag(A,1) 
    
    diag(sparse(1:10))  // sparse diagonal matrix
    
    // form a tridiagonal matrix of size 2*m+1
    m=5;diag(-m:m) +  diag(ones(2*m,1),1) +diag(ones(2*m,1),-1)
     
      




See Also
~~~~~~~~

` **sysdiag** `_,` **sparse** `_,

.. _
      : ://./elementary/sparse.htm
.. _
      : ://./elementary/sysdiag.htm


