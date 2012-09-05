


variance
========

variance of the values of a vector or matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    s=variance(x[,orien[,w]])
    s=variance(x,'r') or m=variance(x,1)
    s=variance(x,'c') or m=variance(x,2)




Arguments
~~~~~~~~~

:x real or complex vector or matrix
: :orien the orientation of the computation. Valid values or the orien
  parameter are 1, "r", 2 and "c".
: :w w : type of normalization to use. Valid values are 0 and 1. This
  depends on the number of columns of x (if orien = 1 is chosen), the
  number of rows (if orien = 2 is chosen). If w = 0, normalizes with
  m-1, provides the best unbiased estimator of the variance (this is the
  default). If w = 1, normalizes with m, this provides the second moment
  around the mean. If no orien option is given, the normalization is
  done with n * m - 1, where n * m is the total number of elements in
  the matrix.
:



Description
~~~~~~~~~~~

This function computes the variance of the values of a vector or
matrix `x`.

For a vector or a matrix `x`, `s=variance(x)` returns in the scalar
`s` the variance of all the entries of `x`.

`s=variance(x,'r')` (or, equivalently, `s=variance(x,1)`) is the
rowwise variance. It returns in each entry of the row vector s the
variance of each column of `x`. The generalized formulae is used,
which manages complex values.

`s=variance(x,'c')` (or, equivalently, `s=variance(x,2)`) is the
columnwise standard deviation. It returns in each entry of the column
vector `s` the variance of each row of `x`. The generalized formulae
is used, which manages complex values.



Examples
~~~~~~~~


::

    x=[0.2113249 0.0002211 0.6653811;0.7560439 0.4453586 0.6283918]
    s=variance(x)
    s=variance(x,'r')
    s=variance(x,'c')




See Also
~~~~~~~~


+ `mtlb_var`_ Matlab var emulation function




Bibliography
~~~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, fifth
edition, J.Wiley & Sons, 1990.

.. _mtlb_var: mtlb_var.html


