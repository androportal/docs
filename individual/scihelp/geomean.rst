


geomean
=======

geometric mean



Calling Sequence
~~~~~~~~~~~~~~~~


::

    gm=geomean(x)
    gm=geomean(x,'r')(or, equivalently, gm=geomean(x,1))
    gm=geomean(x,'c')(or, equivalently, gm=geomean(x,2))




Arguments
~~~~~~~~~

:x real or complex vector or matrix
:



Description
~~~~~~~~~~~

This function computes the geometric mean of a vector or matrix `x`.
For a vector or matrix `x`, `gm=geomean(x)` returns in scalar `gm` the
geometric mean of all the entries of `x`.

`gm=geomean(x,'r')` (or, equivalently, `gm=gmean(x,1)` ) returns in
each entry of the row vector `gm` the geometric mean of each column of
`x`.

`gm=geomean(x,'c')` (or, equivalently, `gm=gmean(x,2)` ) returns in
each entry of the column vector `gm` the geometric mean of each row of
`x`.



Bibliography
~~~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, fifth
edition, J.Wiley & Sons, 1990.



