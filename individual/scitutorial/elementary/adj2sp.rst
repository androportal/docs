====
"adj2sp"
====

Scilab Function Last update : JUN 1997
**adj2sp** - converts adjacency form into sparse matrix.



Parameters
~~~~~~~~~~


+ **xadj** : integer vector of length (n+1).
+ **adjncy** : integer vector of length nz containing the row indices
  for the corresponding elements in anz
+ **anz** : column vector of length nz, containing the non-zero
  elements of A
+ **mn** : row vector with 2 entries, **mn=size(A)** (optional).
+ **A** : real or complex sparse matrix (nz non-zero entries)




Description
~~~~~~~~~~~


::

    
    
    sp2adj converts an adjacency form representation of a matrix
    into its standard Scilab representation (utility fonction).
    xadj, adjncy, anz = adjacency representation of A i.e:
       
        


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

` **sp2adj** `_,` **spcompack** `_,

.. _
      : ://./elementary/spcompack.htm
.. _
      : ://./elementary/sp2adj.htm


