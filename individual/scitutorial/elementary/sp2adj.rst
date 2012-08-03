====
"sp2adj"
====

Scilab Function Last update : JUN 1997
**sp2adj** - converts sparse matrix into adjacency form



Parameters
~~~~~~~~~~


+ **A** : real or complex sparse matrix (nz non-zero entries)
+ **xadj** : integer vector of length (n+1).
+ **adjncy** : integer vector of length nz containing the row indices
  for the corresponding elements in anz
+ **anz** : column vector of length nz, containing the non-zero
  elements of A




Description
~~~~~~~~~~~


::

    
    
    sp2adj converts a sparse matrix into its adjacency form (utility
    fonction).
    A =  n x m sparse matrix. xadj, adjncy, anz = adjacency 
    representation of A i.e:
       
        


**xadj(j+1)-xadj(j)** = number of non zero entries in row j.
**adjncy** = column index of the non zeros entries in row 1, row
2,..., row n. **anz** = values of non zero entries in row 1, row
2,..., row n. **xadj** is a (column) vector of size n+1 and **adjncy**
is an integer (column) vector of size **nz=nnz(A)** . **anz** is a
real vector of size **nz=nnz(A)** .



Examples
~~~~~~~~


::

    
    
    A = sprand(100,50,.05);
    [xadj,adjncy,anz]= sp2adj(A);
    [n,m]=size(A);
    p = adj2sp(xadj,adjncy,anz,[n,m]);
    A-p,
     
      




See Also
~~~~~~~~

` **adj2sp** `_,` **sparse** `_,` **spcompack** `_,` **spget** `_,

.. _
      : ://./elementary/spget.htm
.. _
      : ://./elementary/sparse.htm
.. _
      : ://./elementary/adj2sp.htm
.. _
      : ://./elementary/spcompack.htm


