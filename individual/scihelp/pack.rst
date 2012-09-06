


pack
====

Compress a list of block-diagonal symmetric matrices.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    CA = pack(A,blocksizes)
    [CA,sel] = pack(A,blocksizes)




Arguments
~~~~~~~~~

:A m-by-n real matrix of doubles, the entries of a list of block-
  diagonal symmetric matrices. n is the number of matrices stored into
  `A`.
: :blocksizes b-by-1 real matrix of doubles, the sizes of the blocks.
: :CA p-by-n real matrix of doubles, a compressed representation of
  `A`.
: :sel 1-by-s real matrix of doubles, the indices of the rows of `A`
  which have been selected in `CA`.
:



Description
~~~~~~~~~~~

This function takes as input argument a list of block-diagonal
matrices stored in the m-by-n matrix `A`. Only the non-zero entries of
the block-diagonal matrices are stored. The integer `n` is the number
of block-diagonal matrices, while the integer `m` is the number of
nonzero entries of one single block-diagonal matrix. The function
removes the symmetric entries, and returns in `CA` the compressed
representation of `A`.

In the `CA` matrix, the symmetric entries stored in `A` have been
removed. The rows which have been selected in `CA` are stored in the
vector `sel`, so that, on output, we have `CA == A(sel,:)`.

For example, the matrix



is stored as


::

    
          [1; 2; 3; 4; 5; 6; 7; 8; 9; 10]
        


with `blocksizes=[2,3,1]`.

This function is designed to be used when preparing the input
arguments of the `semidef` function.



Examples
~~~~~~~~

In the following example, we compress a single block-diagonal
symmetric matrix `Z`. This is the example presented in "SP: Software
for Semidefinite Programming, User's Guide, Beta Version", November
1994, L. Vandenberghe and S. Boyd, 1994, on page 5.


::

    Z = [
    1 2 0 0 0 0
    2 3 0 0 0 0
    0 0 4 5 6 0
    0 0 5 7 8 0
    0 0 6 8 9 0
    0 0 0 0 0 10
    ];
    blocksizes=[2,3,1];
    Z1 = Z(1:2,1:2);
    Z2 = Z(3:5,3:5);
    Z3 = Z(6,6);
    A = `list2vec`_(`list`_(Z1,Z2,Z3));
    [CA,sel] = pack(A,blocksizes)


In the following example, we compress three block-diagonal symmetric
matrices `F0`, `F1` and `F2`.


::

    // Define 3 symmetric block-diagonal matrices: F0, F1, F2
    F0=[2,1,0,0;
        1,2,0,0;
        0,0,3,1;
        0,0,1,3]
    F1=[1,2,0,0;
        2,1,0,0;
        0,0,1,3;
        0,0,3,1]
    F2=[2,2,0,0;
        2,2,0,0;
        0,0,3,4;
        0,0,4,4]
    // Define the size of the two blocks:
    // the first block has size 2, 
    // the second block has size 2.
    blocksizes=[2,2];
    // Extract the two blocks of the matrices.
    F01=F0(1:2,1:2);
    F02=F0(3:4,3:4);
    F11=F1(1:2,1:2);
    F12=F1(3:4,3:4);
    F21=F2(1:2,1:2);
    F22=F2(3:4,3:4);
    // Create 3 column vectors, containing nonzero entries 
    // in F0, F1, F2.
    F0nnz = [F01(:);F02(:)];
    F1nnz = [F11(:);F12(:)];
    F2nnz = [F21(:);F22(:)];
    // Create a 16-by-3 matrix, representing the 
    // nonzero entries of the 3 matrices F0, F1, F2.
    A=[F0nnz,F1nnz,F2nnz]
    // Pack the list of matrices A into CA.
    [CA,sel] = pack(A,blocksizes)
    // Check that CA == A(sel,:)
    A(sel,:)




References
~~~~~~~~~~

L. Vandenberghe and S. Boyd, " Semidefinite Programming," Informations
Systems Laboratory, Stanford University, 1994.

Ju. E. Nesterov and M. J. Todd, "Self-Scaled Cones and Interior-Point
Methods in Nonlinear Programming," Working Paper, CORE, Catholic
University of Louvain, Louvain-la-Neuve, Belgium, April 1994.

SP: Software for Semidefinite Programming, User's Guide, Beta Version,
November 1994, L. Vandenberghe and S. Boyd, 1994
`http://www.ee.ucla.edu/~vandenbe/sp.html`_



See Also
~~~~~~~~


+ `unpack`_ Uncompress a list of block-diagonal symmetric matrices.


.. _http://www.ee.ucla.edu/~vandenbe/sp.html: http://www.ee.ucla.edu/~vandenbe/sp.html
.. _unpack: unpack.html


