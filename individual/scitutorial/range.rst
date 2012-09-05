


range
=====

range (span) of A^k



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [X,dim]=range(A,k)




Arguments
~~~~~~~~~

:A real square matrix
: :k integer
: :X orthonormal real matrix
: :dim integer (dimension of subspace)
:



Description
~~~~~~~~~~~

Computation of Range `A^k` ; the first dim rows of `X` span the range
of `A^k`. The last rows of `X` span the orthogonal complement of the
range. `X*X'` is the Identity matrix



Examples
~~~~~~~~


::

    A=`rand`_(4,2)*`rand`_(2,4);   // 4 column vectors, 2 independent.
    [X,dim]=range(A,1);dim   // compute the range
    
    y1=A*`rand`_(4,1);          //a vector which is in the range of A
    y2=`rand`_(4,1);            //a vector which is not  in the range of A
    `norm`_(X(dim+1:$,:)*y1)    //the last entries are zeros, y1 is in the range of A
    `norm`_(X(dim+1:$,:)*y2)    //the last entries are not zeros
    
    I=X(1:dim,:)'            //I is a basis of the range
    coeffs=X(1:dim,:)*y1     // components of y1 relative to the I basis
    
    `norm`_(I*coeffs-y1)        //check




See Also
~~~~~~~~


+ `fullrfk`_ full rank factorization of A^k
+ `rowcomp`_ row compression, range




Used Functions
~~~~~~~~~~~~~~

The `range` function is based on the `rowcomp`_ function which uses
the `svd`_ decomposition.

.. _fullrfk: fullrfk.html
.. _svd: svd.html
.. _rowcomp: rowcomp.html


