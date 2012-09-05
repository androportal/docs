


gsort
=====

sorting by quick sort agorithm



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [B [,k]]=gsort(A)
    [B [,k]]=gsort(A,option)
    [B [,k]]=gsort(A,option,direction)




Arguments
~~~~~~~~~

:A a real,an integer or a character string vector/matrix or a sparse
  vector.
: :option a character string. It gives the type of sort to perform:

    + 'r' : each column of `A` is sorted
    + 'c': each row of `A` is sorted
    + 'g': all elements of `A` are sorted. It is the default value.
    + 'lr': lexicographic sort of the rows of `A`
    + 'lc': lexicographic sort of the columns of `A`

: :direction a character string. It gives the ordering direction:
  `'i'` stand for increasing and `'d'` for decreasing order (default).
: :B an array with same type and dimensions as `A`.
: :k a real array with integer values and same dimensions as `A`.
  Contains the origin indices.
:



Description
~~~~~~~~~~~

`gsort` implements a "quick sort" algorithm for various data types.


+ `B=gsort(A,'g')`, `B=gsort(A,'g','d')` and `B=gsort(A)` sort the
  elements of the array `A`, seen as `A(:)` in a decreasing order.
  `B=gsort(A,'g','i')` sort the elements of the array `A` in the
  increasing order.
+ `B=gsort(A,'lr')` sorts the rows of `A` in lexical decreasing order.
  `B` is obtained by a permutation of the rows of matrix `A` in such a
  way that the rows of `B` verify `B(i,:)>=B(j,:)` if `i<j`.
  `B=gsort(A,'lr','i')` works similarily for increasing lexical order.
+ `B=gsort(A,'lc')` sorts the columns of `A` in lexical decreasing
  order. `B` is obtained by a permutation of the columns of matrix `A`
  in such a way that the columns of `B` verify `B(:,i)>=B(:,j)` if
  `i<j`. `B=gsort(A,'lc','i')` works similarily for increasing lexical
  order.


If required the second return argument `k` contains the indices of the
sorted values in `A`. If `[B,k]=gsort(A,'g')` one has `B==A(k)`. **The
algorithme preserve the relative order of records with equal values.**

When `v` is complex, the elements are sorted by magnitude, i.e., abs(
`v`) . Only `'g'` as second argument is managed with complex.

With complex numbers, `gsort` can be overloaded

see macro: SCI/modules/elementary_functions/macros/%_gsort.sci

Overloading for not managed type (others than a real, an integer or a
character string vector/matrix or a sparse vector.) is allowed.

if `v` have `%nan` or `%inf` as elements. gsort places these at the
beginning with `'i'` or at the end with `'d'` argument.



Examples
~~~~~~~~


::

    alr=[1,2,2;
    1,2,1;
    1,1,2;
    1,1,1];
    [alr1,k]=gsort(alr,'lr','i')
    [alr1,k]=gsort(alr,'lc','i')
    
    v=`int32`_(alr)
    
    gsort(v)
    gsort(v,'lr','i')
    gsort(v,'lc','i')
    
    v=['Scilab' '2.6'
    'Scilab' '2.7'
    'xcos' '2.7'
    'Scilab' '3.1'
    'xcos' '3.1'
    'xcos' '4.0'
    'Scilab' '4.0']
    
    gsort(v,'lr','i')
    gsort(v,'lc','i')




See Also
~~~~~~~~


+ `find`_ find indices of boolean vector or matrix true elements



+ `overloading`_ display, functions and operators overloading
  capabilities




Bibliography
~~~~~~~~~~~~

Quick sort algorithm from Bentley & McIlroy's "Engineering a Sort
Function". Software---Practice and Experience, 23(11):1249-1265



History
~~~~~~~
Version Description 5.4.0 This function allows overloading for
unmanaged type (others than a real, an integer or a character string
vector/matrix or a sparse vector).
.. _overloading: overloading.html
.. _find: find.html


