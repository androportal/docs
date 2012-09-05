


cat
===

concatenate several arrays



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=cat(dims,A1,A2,...,An)




Arguments
~~~~~~~~~

:dims a positive real scalar.
: :A1,A2,..An scalars, vectors, matrices or multi-arrays, or cell
  arrays. `A1,A2,...,An` must have the same size (excluding the
  dimension number `dims`). `size(A1,i)=size(A2,i)=...=size(An,i)` for
  `i` different of dims and `size(A1,dims),
  size(A2,dims),...,size(An,dims)` can be different.
: :y a scalar, vector, matrix or multi-array, or cell array `y` has
  the same type as `A1,A2,...,An`.
:



Description
~~~~~~~~~~~

`y=cat(dims,A1,A2,...,An)` : `y` is the result of the concatenation of
the input arguments `A1,A2,...,An`.

If `dims=1`, then the concatenation is done according to the rows

`A1=[1 2 3 ; 4 5 6]`; `A2=[7 8 9 ; 10 11 12]`; `y=cat(1,A1,A2)` =>
`y=[1 2 3 ; 4 5 6 ;7 8 9; 10 11 12]` .

If `dims=2`, then the concatenation is done according to the columns
of the input arguments

`A1=[1 2 3;4 5 6]`; `A2=[7 8 9 ;10 11 12]`; `y=cat(2,A1,A2)` => `y=[1
2 3 7 8 9 ; 4 5 6 10 11 12]` .



Examples
~~~~~~~~


::

    // first example : concatenation according to the rows 
    dims=1; A1=[1 2 3]; A2=[4 5 6 ; 7 8 9]; A3=[10 11 12]; y=cat(dims,A1,A2,A3)
    
    // second example :  concatenation according to the columns
    dims=2; A1=[1 2 3]'; A2=[4 5;7 8;9 10]; y=cat(dims,A1,A2)
    
    // third example : concatenation according to the 3th dimension 
    dims=3; A1=`matrix`_(1:12,[2,2,3]); A2=[13 14;15 16]; A3=`matrix`_(21:36,[2,2,4]); y=cat(dims,A1,A2,A3)




See Also
~~~~~~~~


+ `permute`_ permute the dimensions of an array
+ `matrix`_ reshape a vector or a matrix to a different size matrix


.. _matrix: matrix.html
.. _permute: permute.html


