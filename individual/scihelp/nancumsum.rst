


nancumsum
=========

Thos function returns the cumulative sum of the values of a matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    s = nancumsum(x,orient)




Arguments
~~~~~~~~~

:x x is a numerical vector or matrix.
: :orient is an optional parameter. The possible values are '*', 1, 2,
  'r' or 'c'.
: :s numerical scalar or vector. It contains the cumulative sum of the
  values of x, ignoring the NAN's.
:



Description
~~~~~~~~~~~

This function returns in scalar or vector s the cumulative sum of the
values (ignoring the NANs) of a vector or matrix (real or complex) x.

This function for a vector or a matrix x, s=nancumsum(x) (or,
equivalently s=nancumsum(x,'*') returns in scalar s the cumulative sum
(ignoring the NANs) of all the entries of x taken columnwise.

s=nancumsum(x,'r') (or, equivalently, s=nancumsum(x,1)) returns in the
cols(x) sized vector s the cumulative sum (ignoring the NANs) of the
rows of x: s(:,i)=nancumsum(x(:,i))

s=nancumsum(x,'c') (or, equivalently, s=nancumsum(x,2)) returns in the
rows(x) sized vector s the cumulative sum (ignoring NANs) of the
columns of x: s(i,:)=nancumsum(x(i,:))

For the last two cases, if a row or column is in whole composed of
NAN, the corresponding place of s will contain a NAN.



Examples
~~~~~~~~


::

    a=[1 2 3;4 5 6]
    s=nancumsum(a)
    s=nancumsum(a,'r')
    s=nancumsum(a,'c')




See Also
~~~~~~~~


+ `nansum`_ Sum of values ignoring NAN's
+ `cumsum`_ cumulative sum of array elements


.. _cumsum: cumsum.html
.. _nansum: nansum.html


