


perctl
======

computation of percentils



Calling Sequence
~~~~~~~~~~~~~~~~


::

    p=perctl(x,y)




Arguments
~~~~~~~~~

:x real or complex vector or matrix
: :y vector of positif integer values between 0 and 100.
:



Description
~~~~~~~~~~~

Compute the matrix p of percentils (in increasing order, column first)
of the real vector or matrix x.

The percentils are indicated by the entries of y, the values of
entries of y must be positive integers between 0 and 100.

p is a matrix whose type is length(y) x 2 and the content of its first
column are the percentils values.

The contents of its second column are the places of the computed
percentiles in the input matrix x.

The minimum or maximum values in x are assigned to percentiles for
percent values outside that range.



Examples
~~~~~~~~


::

    x=[6  7 0 7 10 4 2 2 7  1;
       6  0 5 5 5  2 0 6 8  10;
       8  6 4 3 5  9 8 3 4  7;
       1  3 2 7 6  1 1 4 8  2;
       6  3 5 1 6  5 9 9 5  5;
       1  6 4 4 5  4 0 8 1  8;
       7  1 3 7 8  0 2 8 10 8;
       3  6 1 9 8  5 5 3 2  1;
       5  7 6 2 10 8 7 4 0  8;
       10 3 3 4 8  6 9 4 8  3]
    y=[10 20 30]
    p=perctl(x,y)




Bibliography
~~~~~~~~~~~~

HYNDMAN,Rob J. and FAN Yanan, Sample Quantiles in Statistical
Packages, The American Statistician, Nov.1996, Vol 50, No.4



