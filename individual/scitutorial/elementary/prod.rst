====
"prod"
====

Scilab Function Last update : 02/11/2005
**prod** - product



Calling Sequence
~~~~~~~~~~~~~~~~

y=prod(x)
y=prod(x,'r') or y=prod(x,1)
y=prod(x,'c') or y=prod(x,2)
y=prod(x,'m')




Parameters
~~~~~~~~~~


+ **x** : real or complex vector or matrix
+ **y** : real or complex scalar or matrix




Description
~~~~~~~~~~~

For a vector or a matrix **x** , **y=prod(x)** returns in the scalar
**y** the prod of all the entries of **x** , , e.g. **prod(1:n)** is
n!

**y=prod(x,'r')** (or, equivalently, **y=prod(x,1)** )computes the
rows elementwise product of **x** . **y** is the row vector:
**y(i)=prod(x(i,:))** .

**y=prod(x,'c')** (or, equivalently, **y=prod(x,2)** ) computes the
columns elementwise product of **x** . **y** is the column vector:
**y(i)=prod(x(:,i))** .

**y=prod(x,'m')** is the product along the first non singleton
dimension of **x** (for compatibility with Matlab).

**prod** is not implemented for sparse matrices.



Examples
~~~~~~~~


::

    
    
    A=[1,2;0,100];
    prod(A)
    prod(A,'c')
    prod(A,'r')
     
      




See Also
~~~~~~~~

` **sum** `_,` **cumprod** `_,

.. _
      : ://./elementary/cumprod.htm
.. _
      : ://./elementary/sum.htm


