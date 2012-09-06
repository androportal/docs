


trimmean
========

trimmed mean of a vector or a matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    m=trimmean(x[,discard [,flag [,verbose]]])




Arguments
~~~~~~~~~

:x real or complex vector or matrix
: :discard Optional real value between 0 and 100 representing the part
  of the data to discard. It discard is not in the [0,100] range, an
  error is generated. Default value for discard=50.
: :flag Optional string or real parameter which controls the behaviour
  when x is a matrix. Available values for flag are : "all", 1, 2, r or
  c (default is flag="all"). The two values flag=r and flag=1 are
  equivalent. The two values flag=c and flag=2 are equivalent.
: :verbose Optional integer. If set to 1, then enables verbose
  logging. Default is 0.
:



Description
~~~~~~~~~~~

A trimmed mean is calculated by discarding a certain percentage of the
lowest and the highest scores and then computing the mean of the
remaining scores. For example, a mean trimmed 50% is computed by
discarding the lower and higher 25% of the scores and taking the mean
of the remaining scores.

The median is the mean trimmed 100% and the arithmetic mean is the
mean trimmed 0%.

A trimmed mean is obviously less susceptible to the effects of extreme
scores than is the arithmetic mean. It is therefore less susceptible
to sampling fluctuation than the mean for extremely skewed
distributions. The efficiency of a statistic is the degree to which
the statistic is stable from sample to sample. That is, the less
subject to sampling fluctuation a statistic is, the more efficient it
is. The efficiency of statistics is measured relative to the
efficiency of other statistics and is therefore often called the
relative efficiency. If statistic A has a smaller standard error than
statistic B, then statistic A is more efficient than statistic B. The
relative efficiency of two statistics may depend on the distribution
involved. For instance, the mean is more efficient than the median for
normal distributions but not for some extremely skewed distributions.
The efficiency of a statistic can also be thought of as the precision
of the estimate: The more efficient the statistic, the more precise
the statistic is as an estimator of the parameter. The trimmed mean is
less efficient than the mean for normal distributions.

For a vector or matrix `x`, `t=trimmean(x,discard)` returns in scalar
`t` the mean of all the entries of `x`, after discarding `discard/2`
highest values and `discard/2` lowest values.

`t=trimmean(x,discard,'r')` (or, equivalently,
`t=trimmean(x,discard,1)`) returns in each entry of the row vector `t`
the trimmed mean of each column of `x`.

`t=trimmean(x,discard,'c')` (or, equivalently,
`t=trimmean(x,discard,2)`) returns in each entry of the column vector
`t` the trimmed mean of each row of `x`.

This function computes the trimmed mean of a vector or matrix `x`.

For a vector or matrix `x`, `m=trimmean(x,discard)` returns in scalar
`m` the trimmed mean of all the entries of `x`.

`m=trimmean(x,'r')` (or, equivalently, `m=trimmean(x,1)` )returns in
each entry of the row vector `m` the trimmed mean of each column of
`x` .

`m=trimmean(x,'c')` (or, equivalently, `m=trimmean(x,2)` )returns in
each entry of the column vector `m` the trimmed mean of each row of
`x` .



Example with x as vector
~~~~~~~~~~~~~~~~~~~~~~~~

In the following example, one computes the trimmed mean of one data
vector, with the default discard value equals to 50 and verbose
logging. The data is made of 9 entries. The algorithms sorts the
vector and keeps only indices from 3 to 7, skipping indices 1, 2, 8
and 9. The value 4000, which is much larger than the others is not
taken into account. The computed trimmed mean is therefore 50.


::

    data = [10, 20, 30, 40, 50, 60, 70, 80, 4000];
    computed = trimmean(data,verbose=1);




Example with x as matrix
~~~~~~~~~~~~~~~~~~~~~~~~

In the following example, one computes the trimmed mean of one data
matrix. The chosen discard value is 50. The orientation is "r", which
means that the data is sorted row by row. For each column of the
matrix, one computes a trimmed mean. The trimmed mean is the line
vector [25 25 25 25].


::

    data = [10 10 10 10
            20 20 20 20
            30 30 30 30
            4000 4000 4000 4000];
    computed = trimmean(data,50,orien="r");




References
~~~~~~~~~~

Luis Angel Garcia-Escudero and Alfonso Gordaliza, Robustness
Properties of Means and Trimmed Means, JASA, Volume 94, Number 447,
Sept 1999, pp956-969

Trimmed Mean, `http://davidmlane.com/hyperstat/A11971.html`_

.. _http://davidmlane.com/hyperstat/A11971.html: http://davidmlane.com/hyperstat/A11971.html


