


length
======

length of object



Calling Sequence
~~~~~~~~~~~~~~~~


::

    n=length(M)




Arguments
~~~~~~~~~

:M matrix (usual or polynomial or character string) or list
: :n integer or integer matrix
:



Description
~~~~~~~~~~~

For usual or polynomial matrix `n` is the integer equal to number of
rows times number of columns of `M`. (Also valid for `M` a boolean
matrix)

For matrices made of character strings (and in particular for a
character string) `length` returns in `n` the length of entries of the
matrix of character strings `M`.

The length of a list is the number of elements in the list (also given
by `size`).

The length of a mlist is by default the number of elements in the
mlist, but you can overload it (see example).

`length('123')` is `3`. `length([1,2;3,4])` is `4`.

WARNING : length of a sparse matrix returns the max of dimensions and
not the product of the dimensions. (example :
length(sparse(eye(12,2))) returns max(12,2) and not 24)

please use size(...,'*') with sparse matrix.



Examples
~~~~~~~~


::

    length([123 ; 456 ])
    length(['hello world',SCI])



::

    a = `mlist`_(["myMlistT" "field1" "field2"],"aexample","bexampleb");
    length(a) 
    // returns 3 default behaviour if length not overloaded for MList
    
    // we create an overload function for MList of type myMlistT
    function r=%myMlistT_length(M)
      r = length(M.field1)
    endfunction
    
    length(a) 
    // returns 8 result of length(a.field1)




See Also
~~~~~~~~


+ `size`_ size of objects




History
~~~~~~~
Version Description 5.4.0 This function allows overloading for mlist
type.
.. _size: size.html


