


repmat
======

Replicate and tile an array



Calling Sequence
~~~~~~~~~~~~~~~~


::

    B = repmat(A,m,n,...)



::

    B = repmat(A,siz)



::

    B = repmat(A,m)




Arguments
~~~~~~~~~

:A input 2D array.
: :m, n, ... integers, number of `A` blocks for each dimension of `B`.
: :siz vector of integer, each element gives the number of `A` blocks
  for corresponding dimension of `B`.
: :B resulting array form by tiling the `A` 2D array.
:



Description
~~~~~~~~~~~

`repmat(A,m,n)` or similarily `repmat(A,[m,n])` returns a large matrix
consisting of an `m`-by- `n` tiling of copies of `A`. The size of the
result is `[size(A,1)*M, size(A,2)*N]`.

`repmat(A,m)` creates an `m`-by- `m`tiling.

`repmat(A,[m n p ...])` tiles the array A to produce a
multidimensional array composed of copies of `A`. The size of the
result is `[size(A,1)*M, size(A,2)*N, size(A,3)*P, ...]`.

For now,only arrays of real, integer, boolean, character string,
polynomial and rational as well as sparse matrices are supported. This
function definition can be extended using overloading mechanism.



Examples
~~~~~~~~


::

    repmat(1:3,2,2)
    repmat(`int8`_([1 0 1;0 1 0]),2,3,2)
    repmat("Scilab",3,2)
    t="Scilab";t(`ones`_(3,2))
    repmat([1/%s;2/(%s+1)],1,3)




See Also
~~~~~~~~


+ `matrix`_
+ `extraction`_
+ `size`_




History
~~~~~~~
Version Description 5.3.1 Function repmat introduced.
.. _extraction: extraction.html
.. _size: size.html
.. _matrix: matrix.html


