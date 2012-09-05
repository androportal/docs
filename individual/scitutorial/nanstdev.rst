


nanstdev
========

standard deviation (ignoring the NANs).



Calling Sequence
~~~~~~~~~~~~~~~~


::

    s=nanstdev(x)
    s=nanstdev(x,'r') or m=nanstdev(x,1)
    s=nanstdev(x,'c') or m=nanstdev(x,2)




Arguments
~~~~~~~~~

:x real or complex vector or matrix
:



Description
~~~~~~~~~~~

This function computes the standard deviation of the values of a
vector or matrix `x` (ignoring the NANs).

For a vector or a matrix `x`, `s=nanstdev(x)` returns in the scalar
`s` the standard deviation of all the entries of `x` (ignoring the
NANs).

`s=nanstdev(x,'r')` (or, equivalently, `s=nanstdev(x,1)`) is the
rowwise standard deviation. It returns in each entry of the row vector
`s` the standard deviation of each column of `x` (ignoring the NANs).

`s=nanstdev(x,'c')` (or, equivalently, `s=nanstdev(x,2)`) is the
columnwise standard deviation. It returns in each entry of the column
vector `s` the standard deviation of each row of `x` (ignoring the
NANs).

In Labostat, NAN values stand for missing values in tables.



Examples
~~~~~~~~


::

    x=[0.2113249 0.0002211 0.6653811;
       0.7560439 %nan      0.6283918;
       0.3       0.2       0.5      ];
    s=nanstdev(x)
    s=nanstdev(x,'r')
    s=nanstdev(x,'c')




Bibliography
~~~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, fifth
edition, J.Wiley & Sons, 1990.



