====
"sum"
====

Scilab Function Last update : 02/11/2005
**sum** - sum (row sum, column sum) of vector/matrix entries



Calling Sequence
~~~~~~~~~~~~~~~~

y=sum(x)
y=sum(x,'r') or y=sum(x,1)

y=sum(x,'c') or y=sum(x,2)

y=sum(x,'m')




Parameters
~~~~~~~~~~


+ **x** : vector or matrix (real, complex, sparse or polynomial)
+ **y** : scalar or vector




Description
~~~~~~~~~~~

For a vector or a matrix **x** , **y=sum(x)** returns in the scalar
**y** the sum of all the entries of **x** .

**y=sum(x,'r')** (or, equivalently, **y=sum(x,1)** ) is the rowwise
sum: **y(j)= sum(x(:,j))** . **y** is a row vector

**y=sum(x,'c')** (or, equivalently, **y=sum(x,2)** ) is the columnwise
sum. It returns in each entry of the column vector **y** the sum :
**y(i)= sum(x(i,:))** )).

**y=sum(x,'m')** is the sum along the first non singleton dimension of
**x** (for compatibility with Matlab).



Examples
~~~~~~~~


::

    
    
    A=[1,2;3,4];
    trace(A)-sum(diag(A))
    sum(A,'c')-A*ones(2,1)
    sum(A+%i)
    A=sparse(A);sum(A,'c')-A*ones(2,1)
    s=poly(0,'s');
    M=[s,%i+s;s^2,1];
    sum(M),sum(M,2)
     
      




See Also
~~~~~~~~

` **cumsum** `_,` **prod** `_,

.. _
      : ://./elementary/cumsum.htm
.. _
      : ://./elementary/prod.htm


