


colon
=====

(:) colon operator



Description
~~~~~~~~~~~

Colon symbol `:` can be used to form implicit vectors (see also
`linspace`_, `logspace`_) :

:j:k is the vector `[j, j+1,...,k]` (empty if `j>k`);
: :j:d:k is the vector `[j, j+d, ..., j+m*d]`.
:

The colon notation can also be used to pick out selected rows, columns
and elements of vectors and matrices (see also
`extraction`_,`insertion`_):

:A(:) is the vector of all the elements of `A` regarded as a single
  column;
: :A(:,j) is the `j`-th column of `A`;
: :A(i,:) is the `i`-th row of `A`;
: :A(j:k) is `[A(j),A(j+1),...,A(k)]`;
: :A(:,j:k) is

::

    [A(1,j)  A(1,j+1)  ... A(1,k)
    A(2,j)  A(2,j+1)  ... A(2,k)
    . . . . . . . . . . .
    A(M,j)  A(M,j+1)  ... A(M,k)]

if size of `A` is `M`-by- `N`;
: :A(j:k,:) is

::

    [A(j,1)    A(j,2)   ... A(j,N)
    A(j+1,1)  A(j+1,2) ... A(j+1,N)
    . . . . . . . . . . .
    A(k,1)    A(k,2)   ... A(k,N)]

if size of `A` is `M`-by- `N`;
: :A(:)=w fills the matrix `A` with entries of `w` (taken column by
  column if `w` is a matrix). The amount of entries of `A` must be equal
  to the amount of entries of `w`.
:

Please note that even if `i`, `j`, `k` or `d` have a decimal part,
only the integer part will be used.



Examples
~~~~~~~~


::

    a = 1:5
    b = 1:3:12
    A = `matrix`_(1:42,7,6);
    // vector of all the elements of A
    A(:)
    
    // the j-th column of A
    A(:,j)
    
    // the i-th row of A
    A(i,:)
    
    // elements of columns from j to k and all rows
    A(:,j:k)
    
    // elements of all columns and rows from j to k
    A(j:k,:)
    
    w = `matrix`_(101:142,7,6);
    A(:) = w
    
    // if indices are not integer
    i = 1:0.4:10; //indices
    A(i)




See Also
~~~~~~~~


+ `matrix`_ reshape a vector or a matrix to a different size matrix
+ `for`_ language keyword for loops
+ `linspace`_ linearly spaced vector
+ `logspace`_ logarithmically spaced vector


.. _for: for.html
.. _insertion: insertion.html
.. _extraction: extraction.html
.. _linspace: linspace.html
.. _logspace: logspace.html
.. _matrix: matrix.html


