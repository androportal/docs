


nanmean
=======

mean (ignoring Nan's)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    m=nanmean(val)
    m=nanmean(val,'r') (or m=nanmean(val,1))
    m=nanmean(val,'c') (or m=nanmean(val,2))




Arguments
~~~~~~~~~

:val real or complex vector or matrix
:



Description
~~~~~~~~~~~

This function returns in scalar `m` the mean of the values (ignoring
the NANs) of a vector or matrix `val`.

For a vector or matrix `val` , `m=nanmean(val)` or
`m=nanmean(val,'*')` returns in scalar `m` the mean of all the entries
(ignoring the NANs) of `val`.

`m=nanmean(val,'r')` (or, equivalently, `m=nanmean(val,1)`) returns in
each entry of the row vector `m` of type 1xsize(val,'c') the mean of
each column of `val` (ignoring the NANs).

`m=nanmeanf(val,'c')` (or, equivalently, `m=nanmean(val,2)`) returns
in each entry of the column vector `m` of type size(val,'c')x1 the
mean of each row of `val` (ignoring the NANs).

In Labostat, NAN values stand for missing values in tables.



Examples
~~~~~~~~


::

    x=[0.2113249 %nan 0.6653811;0.7560439 0.3303271 0.6283918]
    m=nanmean(x)
    m=nanmean(x,1)
    m=nanmean(x,2)




Bibliography
~~~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, fifth
edition, J.Wiley & Sons, 1990.



