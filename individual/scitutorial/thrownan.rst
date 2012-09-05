


thrownan
========

Eliminates nan values



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [nonan,numb]=thrownan(x)




Arguments
~~~~~~~~~

:x a m-by-n real or complex matrix of doubles. If the number of
  columns in `x` is different from 1, then the column-by-column matrix
  `x` is considered.
: :nonan a (m*n)-by-1 real or complex matrix of doubles, without any
  %nan entries.
: :numb a (m*n)-by-1 real or complex matrix of floating point
  integers, the indices `k` in `x` where `x(k)` is non-nan.
:



Description
~~~~~~~~~~~

This function returns in vector `nonan` the values (ignoring the
`%nan` entries) of a matrix `x` and in the corresponding places of
vector `numb` the indexes of the value.



Examples
~~~~~~~~


::

    x=[0.2113249 %nan 0.6653811;0.7560439 0.3303271 0.6283918]
    [nonan numb]=thrownan(x)
    `and`_(x(numb)==nonan) // Must be %t




