


nansum
======

Sum of values ignoring NAN's



Calling Sequence
~~~~~~~~~~~~~~~~


::

    s = nansum(x,orient)




Arguments
~~~~~~~~~

:x numerical vector or matrix.
: :orient nothing or '*'. 'r' or 1. 'c' or 2.
: :s Numerical scalar or vector containig the value of the adding
  operation.
:



Description
~~~~~~~~~~~

This function returns in s the sum of the values (ignoring the NAN's)
of a numerical vector or matrix x.

For a vector or matrix x, s=nansum(x) (or s=nansum(x,'*')) returns in
scalar s the sum of values of all entries (ignoring the NAN's) of a
vector or matrix x.

s=nansum(x,'r')(or, equivalently, s=nansum(x,1)) returns in each entry
of the row vector s of type 1xsize(x,'c') the sum of each column of x
(ignoring the NANs).

s=nansum(x,'c')(or, equivalently, s=nansum(x,2)) returns in each entry
of the column vector s of type size(x,'c')x1 the sum of each row of x
(ignoring the NANs).

For the last two cases, if a row or column is in whole composed of
NAN, the corresponding place of s will contain a NAN.



Examples
~~~~~~~~


::

    x=[0.2113249 %nan 0.6653811;0.7560439 0.3303271 0.6283918]
    m=nansum(x)
    m=nansum(x,1)
    m=nansum(x,2)




See Also
~~~~~~~~


+ `nancumsum`_ Thos function returns the cumulative sum of the values
  of a matrix
+ `sum`_ sum of array elements




Bibliography
~~~~~~~~~~~~

Wonacott, T.H. and Wonacott, R.J.; Introductory Statistics, 5th
edition, J.Wiley and Sons, 1990.

.. _nancumsum: nancumsum.html
.. _sum: sum.html


