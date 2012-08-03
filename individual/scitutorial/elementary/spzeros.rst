====
"spzeros"
====

Scilab Function Last update : 28/06/2006
**spzeros** - sparse zero matrix



Calling Sequence
~~~~~~~~~~~~~~~~

sp=spzeros(nrows,ncols)
sp=spzeros(A)




Parameters
~~~~~~~~~~


+ **nrows** : integer (number of rows)
+ **ncols** : integer (number os columns)
+ **A** : sparse matrix
+ **sp** : sparse zero matrix




Description
~~~~~~~~~~~

**sp=spzeros(nrows,ncols)** returns a sparse zero matrix **sp** with
**nrows** rows, **ncols** columns. (Equivalent to
**sparse([],[],[nrow,ncols])** )

**sp=spzeros(A)** returns a sparse zero matrix with same dimensions as
**A** . If **[m,n]=size(A)** , **spzeros(m,n)** and **spzeros(A)** are
equivalent. In particular **spzeros(3)** is not equivalent to
**spzeros(3,3)** .



Examples
~~~~~~~~


::

    
    
    sum(spzeros(1000,1000))
     
      




See Also
~~~~~~~~

` **sparse** `_,` **full** `_,` **eye** `_,` **speye** `_,` **spones**
`_,

.. _
      : ://./elementary/eye.htm
.. _
      : ://./elementary/full.htm
.. _
      : ://./elementary/spones.htm
.. _
      : ://./elementary/sparse.htm
.. _
      : ://./elementary/speye.htm


