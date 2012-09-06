


mean
====

mean (row mean, column mean) of vector/matrix entries



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=mean(x)
    y=mean(x,'r')
    y=mean(x,'c')
    y=mean(x,'m')




Arguments
~~~~~~~~~

:x real vector or matrix
: :y scalar or vector
:



Description
~~~~~~~~~~~

For a vector or a matrix `x`, `y=mean(x)` returns in the scalar `y`
the mean of all the entries of `x`.

`y=mean(x,'r')` (or, equivalently, `y=mean(x,1)`) is the rowwise mean.
It returns a row vector: `y(j)= mean(x(:,j))`

`y=mean(x,'c')` (or, equivalently, `y=mean(x,2)`) is the columnwise
mean. It returns a column vector: `y(i)= mean(x(i,:))`

`y=mean(x,'m')` is the mean along the first non singleton dimension of
x (for compatibility with Matlab).



Examples
~~~~~~~~


::

    A=[1,2,10;7,7.1,7.01];
    mean(A)
    mean(A,'r')
    mean(A,'c')
    A=`matrix`_(1:12,[1,1,2,3,2]);
    // in this case mean(A,'m') is equivalent to mean(A,3), the first non singleton dimension of A
    y=mean(A,'m')




See Also
~~~~~~~~


+ `sum`_ sum of array elements
+ `median`_ median (row median, column median,...) of
  vector/matrix/array entries
+ `st_deviation`_ standard deviation (row or column-wise) of
  vector/matrix entries


.. _median: median.html
.. _sum: sum.html
.. _st_deviation: st_deviation.html


