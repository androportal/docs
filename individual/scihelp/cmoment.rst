


cmoment
=======

central moments of all orders



Calling Sequence
~~~~~~~~~~~~~~~~


::

    mom=cmoment(x,ord)
    mom=cmoment(x,ord,'r') or mom=cmoment(x,ord,1)
    mom=cmoment(x,ord,'c') or mom=cmoment(x,ord,2)




Arguments
~~~~~~~~~

:x real or complex vector or matrix
: :ord positive integer
:



Description
~~~~~~~~~~~

cmoment `(x,ord)` is the central moment or order ord of the elements
of `x`. If a third argument of type string `'r'` (or `1`) or `'c'` (or
`2`) is used, we get in the first case, a row vector `mom` such that
`mom(j)` contains the central moment of order `ord` of the `j` column
of `x`. `cmoment(x,ord,'c')` is used in the same way for the central
moments in the rows.



References
~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, J.Wiley &
Sons, 1990.



Examples
~~~~~~~~


::

    x=[0.2113249 0.0002211 0.6653811;
       0.7560439 0.3303271 0.6283918]
    mom=cmoment(x,3)
    mom=cmoment(x,2,'r')
    mom=cmoment(x,3,'c')




See Also
~~~~~~~~


+ `sum`_ sum of array elements
+ `median`_ median (row median, column median,...) of
  vector/matrix/array entries
+ `st_deviation`_ standard deviation (row or column-wise) of
  vector/matrix entries
+ `mean`_ mean (row mean, column mean) of vector/matrix entries
+ `meanf`_ weighted mean of a vector or a matrix
+ `moment`_ non central moments of all orders
+ `nanmean`_ mean (ignoring Nan's)
+ `nanmeanf`_ mean (ignoring Nan's) with a given frequency.
+ `stdev`_
+ `stdevf`_ standard deviation
+ `variance`_ variance of the values of a vector or matrix
+ `variancef`_ standard deviation of the values of a vector or matrix
+ `nanstdev`_ standard deviation (ignoring the NANs).


.. _stdev: st_deviation.html#stdev
.. _variancef: variancef.html
.. _stdevf: stdevf.html
.. _variance: variance.html
.. _median: median.html
.. _sum: sum.html
.. _nanmean: nanmean.html
.. _nanstdev: nanstdev.html
.. _mean: mean.html
.. _meanf: meanf.html
.. _st_deviation: st_deviation.html
.. _nanmeanf: nanmeanf.html
.. _moment: moment.html


