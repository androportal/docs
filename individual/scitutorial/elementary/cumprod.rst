====
"cumprod"
====

Scilab Function Last update : 02/11/2005
**cumprod** - cumulative product



Calling Sequence
~~~~~~~~~~~~~~~~

y=cumprod(x)
y=cumprod(x,'r') or y=cumprod(x,1)
y=cumprod(x,'c') or y=cumprod(x,2)
y=cumprod(x,'m')




Parameters
~~~~~~~~~~


+ **x** : vector or matrix (real or complex)
+ **y** : vector or matrix (real or complex)




Description
~~~~~~~~~~~

For a vector or a matrix **x** , **y=cumprod(x)** returns in **y** the
cumulative product of all the entries of **x** taken columnwise.

**y=cumprod(x,'c')** (or, equivalently, **y=cumprod(x,2)** ) returns
in **y** the cumulative elementwise product of the columns of **x** :
** y(i,:)=cumprod(x(i,:))**

**y=cumprod(x,'r')** (or, equivalently, **y=cumprod(x,2)** ) returns
in **y** the cumulative elementwise product of the rows of **x** : **
y(:,i)=cumprod(x(:,i))** .

**y=cumprod(x,'m')** is the cumulative product along the first non
singleton dimension of **x** (for compatibility with Matlab).



Examples
~~~~~~~~


::

    
    
    A=[1,2;3,4];
    cumprod(A)
    cumprod(A,'r')
    cumprod(A,'c')
    rand('seed',0);
    a=rand(3,4);
    [m,n]=size(a);
    w=zeros(a);
    w(1,:)=a(1,:);
    for k=2:m;w(k,:)=w(k-1,:).*a(k,:);end;w-cumprod(a,'r')
     
      




See Also
~~~~~~~~

` **cumsum** `_,` **sum** `_,` **prod** `_,

.. _
      : ://./elementary/cumsum.htm
.. _
      : ://./elementary/prod.htm
.. _
      : ://./elementary/sum.htm


