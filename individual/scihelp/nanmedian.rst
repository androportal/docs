


nanmedian
=========

median of the values of a numerical vector or matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    m=nanmedian(x)
    m=nanmedian(x,'r') (or m=nanmedian(x,1))
    m=nanmedian(x,'c') (or m=nanmedian(x,2))




Arguments
~~~~~~~~~

:x real or complex vector or matrix
:



Description
~~~~~~~~~~~

For a vector or a matrix `x`, `[m]=nanmedian(x)` returns in the vector
`m` the median of the values (ignoring the NANs) of vector `x`.

`[m]=nanmedian(x,'r')` (or, equivalently, `[m]=nanmedian(x,1)`) are
the rowwise medians. It returns in each position of the row vector `m`
the medians of data (ignoring the NANs) in the corresponding column of
`x`.

`[m]=nanmedian(x,'c')` (or, equivalently, `[m]=nanmedian(x,2)`) are
the columnwise madians. It returns in each position of the column
vector `m` the medians of data (ignoring the NANs) in the
corresponding row of `x`.

In Labostat, NAN values stand for missing values in tables.



Examples
~~~~~~~~


::

    x=[0.2113249 %nan 0.6653811;0.7560439 0.3303271 0.6283918]
    m=nanmedian(x)
    m=nanmedian(x,1)
    m=nanmedian(x,2)




Bibliography
~~~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, fifth
edition, J.Wiley & Sons, 1990.



