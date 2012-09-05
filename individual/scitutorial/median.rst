


median
======

median (row median, column median,...) of vector/matrix/array entries



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=median(x)
    y=median(x,'r')
    y=median(x,'c')
    y=median(x,'m')
    y=median(x,dim)




Arguments
~~~~~~~~~

:x real vector, matrix or an array
: :y scalar,vector, matrix or an array
: :dim positive integer
:



Description
~~~~~~~~~~~

For a vector or a matrix `x`, `y=median(x)` returns in the scalar `y`
the median of all the entries of `x`.

`y=median(x,'r')` (or, equivalently, `y=median(x,1)`) is the median
along the row index. It returns in each entry of the column vector `y`
the median of each column of `x`.

`y=median(x,'c')` (or, equivalently, `y=median(x,2)`) is the median
along the column index. It returns in each entry of the row vector `y`
the median of each row of `x`.

`y=median(x,'m')` is the median along the first non singleton
dimension of `x` (for compatibility with matlab).

`y=median(x,dim)` is the median along the dimension `dim` of `x` (for
compatibility with matlab).



Examples
~~~~~~~~


::

    A=[1,2,10;7,7.1,7.01];
    median(A)
    median(A,'r')
    median(A,'c')
    A=`matrix`_([-9 3 -8 6 74 39 12 -6 -89 23 65 34],[2,3,2]);
    median(A,3)
    median(A,'m')




See Also
~~~~~~~~


+ `sum`_ sum of array elements
+ `mean`_ mean (row mean, column mean) of vector/matrix entries


.. _mean: mean.html
.. _sum: sum.html


