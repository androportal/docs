


adj2sp
======

converts adjacency form into sparse matrix.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    A=adj2sp(xadj,iadj,v)
    A=adj2sp(xadj,iadj,v,mn)




Arguments
~~~~~~~~~

:xadj a (n+1)-by-1 matrix of floating point integers. For `j=1:n`, the
  floating point integer `xadj(j+1)-xadj(j)` is the number of non zero
  entries in column j.
: :iadj a nz-by-1 matrix of floating point integers, the row indices
  for the nonzeros. For `j=1:n`, for `k = xadj(j):xadj(j+1)-1`, the
  floating point integer `i = iadj(k)` is the row index of the nonzero
  entry #k.
: :v a nz-by-1 matrix of floating point integers, the non-zero entries
  of A. For `j=1:n`, for `k = xadj(j):xadj(j+1)-1`, the floating point
  integer `Aij = v(k)` is the value of the nonzero entry #k.
: :mn a 1-by-2 or 2-by-1 matrix of floating point integers, optional,
  `mn(1)` is the number of rows in A, `mn(2)` is the number of columns
  in A. If `mn` is not provided, then `mn=[m,n]` is the default with
  `m=max(iadj)` and `n=size(xadj,"*")-1`.
: :A m-by-n real or complex sparse matrix (with nz non-zero entries)
:



Description
~~~~~~~~~~~

adj2sp converts a sparse matrix into its adjacency form format. The
values in the adjacency format are stored colum-by-column. This is why
this format is sometimes called "Compressed sparse column" or CSC.



Examples
~~~~~~~~

In the following example, we create a sparse matrix from its adjacency
format. Then we check that it matches the expected sparse matrix.


::

    xadj = [1 3 4 7 9 11]';
    iadj = [3 5 3 1 2 4 3 5 1 4]';
    v = [1 2 3 4 5 6 7 8 9 10]';
    B=adj2sp(xadj,iadj,v)
    A = [
    0 0 4 0 9
    0 0 5 0 0
    1 3 0 7 0
    0 0 6 0 10
    2 0 0 8 0
    ];
    C=`sparse`_(A)
    `and`_(B==C)


In the following example, we create a sparse matrix from its adjacency
format. Then we check that it matches the expected sparse matrix.


::

    xadj = [1 2 3 4 5 5 6 6 7 8 9]';
    iadj = [2 5 2 3 1 2 7 6]';
    v = [3 7 5 3 6 5 2 3]';
    C=adj2sp(xadj,iadj,v)
    A = [
    0 0 0 0 0 6 0 0 0 0
    3 0 5 0 0 0 0 5 0 0
    0 0 0 3 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0
    0 7 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 3
    0 0 0 0 0 0 0 0 2 0
    ];
    B=`sparse`_(A)
    `and`_(B==C)


In the following example, we check the use of the mn parameter. The
consistency between the mn parameter and the actual content of xadj
and iadj is checked by adj2sp.


::

    xadj = [1 2 3 4 5 5 6 6 7 8 9]';
    iadj = [2 5 2 3 1 2 7 6]';
    v = [3 7 5 3 6 5 2 3]';
    mn=[7 10];
    C=adj2sp(xadj,iadj,v,mn)


In the following example, create a 3-by-3 sparse matrix. This example
is adapted from the documentation of SciPy.


::

    xadj =  [1,3,4,7]
    iadj =  [1,3,3,1,2,3]
    v = [1,2,3,4,5,6]
    `full`_(adj2sp(xadj,iadj,v))


The previous script produces the following output.


::

    -->`full`_(adj2sp(xadj,iadj,v))
     ans  =
        1.    0.    4.  
        0.    0.    5.  
        2.    3.    6.


In the following example, we check that the sp2adj and adj2sp
functions are inverse.


::

    A = `sprand`_(100,50,.05);
    [xadj,adjncy,anz]= `sp2adj`_(A);
    [n,m] = `size`_(A);
    p = adj2sp(xadj,adjncy,anz,[n,m]);
    A-p




See Also
~~~~~~~~


+ `sp2adj`_ converts sparse matrix into adjacency form
+ `spcompack`_ converts a compressed adjacency representation




References
~~~~~~~~~~

"Implementation of Lipsol in Scilab", Hector E. Rubio Scola, INRIA,
Decembre 1997, Rapport Technique No 0215

"Solving Large Linear Optimization Problems with Scilab : Application
to Multicommodity Problems", Hector E. Rubio Scola, Janvier 1999,
Rapport Technique No 0227

"Toolbox Scilab : Detection signal design for failure detection and
isolation for linear dynamic systems User's Guide", Hector E. Rubio
Scola, 2000, Rapport Technique No 0241

"Computer Solution of Large Sparse Positive Definite Systems", A.
George, Prentice-Hall, Inc. Englewood Cliffs, New Jersey, 1981.

.. _spcompack: spcompack.html
.. _sp2adj: sp2adj.html


