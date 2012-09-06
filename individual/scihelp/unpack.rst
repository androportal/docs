


unpack
======

Uncompress a list of block-diagonal symmetric matrices.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    A=unpack(CA,blocksizes)




Arguments
~~~~~~~~~

:CA p-by-n real matrix of doubles, a compressed representation of `A`.
: :blocksizes b-by-1 real matrix of doubles, the sizes of the blocks.
: :A m-by-n real matrix of doubles, the entries of a list of block-
  diagonal symmetric matrices. n is the number of matrices stored into
  `A`.
:



Description
~~~~~~~~~~~

This function is the reverse of the `pack` function. It uncompresses a
list of symmetric block-diagonal matrices which have been compressed
by `pack`.



Examples
~~~~~~~~


::

    // Define a compressed list of symmetric block-diagonal matrices.
    // There are 3 matrices in the list, as indicated by the 3 columns in CA.
    // Only the nonzero entries are stored in CA. 
    // Only the upper part of the symmetric diagonal matrices are stored in CA.
    CA = [
    2,1,2;  
    1,2,2;   
    2,1,2;   
    3,1,3;   
    1,3,4;   
    3,1,4
    ]
    // Each of the 3 block-diagonal matrices has 2 blocks. 
    // Define the size of the two blocks:
    // the first block has size 2, 
    // the second block has size 2.
    blocksizes=[2,2];
    // Unpack the matrices.
    A=unpack(CA,blocksizes)




See Also
~~~~~~~~


+ `pack`_ Compress a list of block-diagonal symmetric matrices.


.. _pack: pack.html


