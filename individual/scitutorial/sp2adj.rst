


sp2adj
======

converts sparse matrix into adjacency form



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [xadj,iadj,v]=sp2adj(A)




Arguments
~~~~~~~~~

:A m-by-n real or complex sparse matrix (with nz non-zero entries)
: :xadj a (n+1)-by-1 matrix of floating point integers, pointers to
  the starting index in iadj and v for each column. For `j=1:n`, the
  floating point integer `xadj(j+1)-xadj(j)` is the number of non zero
  entries in column j.
: :iadj a nz-by-1 matrix of floating point integers, the row indices
  for the nonzeros. For `j=1:n`, for `k = xadj(j):xadj(j+1)-1`, the
  floating point integer `i = iadj(k)` is the row index of the nonzero
  entry #k.
: :v a nz-by-1 matrix of floating point integers, the non-zero entries
  of A. For `j=1:n`, for `k = xadj(j):xadj(j+1)-1`, the floating point
  integer `Aij = v(k)` is the value of the nonzero entry #k.
:



Description
~~~~~~~~~~~

sp2adj converts a sparse matrix into its adjacency format. The values
in the adjacency format are stored colum-by-column. This is why this
format is sometimes called "Compressed sparse column" or CSC.



Examples
~~~~~~~~

In the following example, we create a full matrix, which entries goes
from 1 to 10. Then we convert it into a sparse matrix, which removes
the zeros. Finally, we compute the adjacency represention of this
matrix. The matrix v contains only the nonzero entries of A.


::

    A = [
    0 0 4 0 9
    0 0 5 0 0
    1 3 0 7 0
    0 0 6 0 10
    2 0 0 8 0
    ];
    B=`sparse`_(A);
    [xadj,iadj,v]=sp2adj(B)
    expected_xadj = [1 3 4 7 9 11]';
    expected_adjncy = [3 5 3 1 2 4 3 5 1 4]';
    expected_anz = [1 2 3 4 5 6 7 8 9 10]';
    `and`_(expected_xadj == xadj) // Should be %t
    `and`_(expected_adjncy == iadj) // Should be %t
    `and`_(expected_anz == v) // Should be %t
    // j is the column index
    for j = 1 : `size`_(xadj,"*")-1
      irows = iadj(xadj(j):xadj(j+1)-1);
      vcolj = v(xadj(j):xadj(j+1)-1);
      `mprintf`_("Column #%d:\n",j)
      `mprintf`_("  Rows  = %s:\n",`sci2exp`_(irows))
      `mprintf`_("  Values= %s:\n",`sci2exp`_(vcolj))
    end


The previous script produces the following output.


::

    Column #1:
      Rows  = [3;5]:
      Values= [1;2]:
    Column #2:
      Rows  = 3:
      Values= 3:
    Column #3:
      Rows  = [1;2;4]:
      Values= [4;5;6]:
    Column #4:
      Rows  = [3;5]:
      Values= [7;8]:
    Column #5:
      Rows  = [1;4]:
      Values= [9;10]:


Let us consider the column #1. The equality xadj(2)-xadj(1)=2
indicates that there are two nonzeros in the column #1. The row
indices are stored in iadj, which tells us that the nonzero entries in
column #1 are at rows #3 and #5. The v matrix tells us the actual
entries are equal to 1 and 2.

In the following example, we browse the nonzero entries of a sparse
matrix by looping on the adjacency structure.


::

    A = [
    0 0 0 0 0 6 0 0 0 0
    3 0 5 0 0 0 0 5 0 0
    0 0 0 3 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0
    0 7 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 3
    0 0 0 0 0 0 0 0 2 0
    ];
    B=`sparse`_(A);
    [xadj,iadj,v]=sp2adj(B)
    expected_xadj = [1 2 3 4 5 5 6 6 7 8 9]';
    expected_adjncy = [2 5 2 3 1 2 7 6]';
    expected_anz = [3 7 5 3 6 5 2 3]';
    `and`_(expected_xadj == xadj) // Should be %t
    `and`_(expected_adjncy == iadj) // Should be %t
    `and`_(expected_anz == v) // Should be %t


In the following example, we check that the sp2adj and adj2sp
functions are inverse.


::

    A = `sprand`_(100,50,.05);
    [xadj,iadj,v]= sp2adj(A);
    [n,m]=`size`_(A);
    p = `adj2sp`_(xadj,iadj,v,[n,m]);
    A-p




See Also
~~~~~~~~


+ `adj2sp`_ converts adjacency form into sparse matrix.
+ `sparse`_ sparse matrix definition
+ `spcompack`_ converts a compressed adjacency representation
+ `spget`_ retrieves entries of sparse matrix




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

.. _adj2sp: adj2sp.html
.. _sparse: sparse.html
.. _spget: spget.html
.. _spcompack: spcompack.html


