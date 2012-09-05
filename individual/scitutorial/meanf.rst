


meanf
=====

weighted mean of a vector or a matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    m=meanf(val,fre)
    m=meanf(val,fre,'r') or m=meanf(val,fre,1)
    m=meanf(val,fre,'c') or m=meanf(val,fre,2)




Arguments
~~~~~~~~~

:?
:



Description
~~~~~~~~~~~

This function computes the mean of a vector or matrix `x`. For a
vector or matrix `x`, `m=mn(x)` returns in scalar `m` the mean of all
the entries of `x`. `m=mn(x,'r')` (or, equivalently, `m=mn(x,1)`)
returns in each entry of the row vector `m` the mean of each column of
`x`. `m=mn(x,'c')` (or, equivalently, `m=mn(x,2)`) returns in each
entry of the column vector `m` the mean of each row of `x`.



Examples
~~~~~~~~


::

    x=[0.2113249 0.0002211 0.6653811;0.7560439 0.3303271 0.6283918]
    m=meanf(x,`rand`_(x))
    m=meanf(x,[10 10 10;1 1 1],'r')
    m=meanf(x,[10 10 10;1 1 1],'c')




Bibliography
~~~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, fifth
edition, J.Wiley & Sons, 1990.



