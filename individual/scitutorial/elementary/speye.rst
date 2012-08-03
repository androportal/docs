====
"speye"
====

Scilab Function Last update : January 1995
**speye** - sparse identity matrix



Calling Sequence
~~~~~~~~~~~~~~~~

Isp=speye(nrows,ncols)
Isp=speye(A)




Parameters
~~~~~~~~~~


+ **nrows** : integer (number of rows)
+ **ncols** : integer (number os columns)
+ **A** : sparse matrix
+ **sp** : sparse identity matrix




Description
~~~~~~~~~~~

**Isp=speye(nrows,ncols)** returns a sparse identity matrix **Isp**
with **nrows** rows, **ncols** columns. (Non square identity matrix
have a maximal number of ones along the main diagonal).

**Isp=speye(A)** returns a sparse identity matrix with same dimensions
as **A** . If **[m,n]=size(A)** , **speye(m,n)** and **speye(A)** are
equivalent. In particular **speye(3)** is not equivalent to
**speye(3,3)** .



Examples
~~~~~~~~


::

    
    
    eye(3,3)-full(speye(3,3))
     
      




See Also
~~~~~~~~

` **sparse** `_,` **full** `_,` **eye** `_,` **spzeros** `_,`
**spones** `_,

.. _
      : ://./elementary/eye.htm
.. _
      : ://./elementary/full.htm
.. _
      : ://./elementary/sparse.htm
.. _
      : ://./elementary/spones.htm
.. _
      : ://./elementary/spzeros.htm


