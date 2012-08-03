====
"trimmean"
====

Last update : 20/12/2004
**trimmean** - trimmed mean of a vector or a matrix



Calling Sequence
~~~~~~~~~~~~~~~~

m=trimmean(x)
m=trimmean(x,discard,'r') or m=trimmean(x,discard,1)
m=trimmean(x,discard,'c') or m=trimmean(x,discard,2)




Parameters
~~~~~~~~~~


+ **x** real or complex vector or matrix
+ **discard** number: The discarding percentage




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
distributions. It is less efficient (The efficiency of a statistic is
the degree to which the statistic is stable from sample to sample.
That is, the less subject to sampling fluctuation a statistic is, the
more efficient it is. The efficiency of statistics is measured
relative to the efficiency of other statistics and is therefore often
called the relative efficiency. If statistic A has a smaller standard
error than statistic B, then statistic A is more efficient than
statistic B. The relative efficiency of two statistics may depend on
the distribution involved. For instance, the mean is more efficient
than the median for normal distributions but not for some extremely
skewed distributions. The efficiency of a statistic can also be
thought of as the precision of the estimate: The more efficient the
statistic, the more precise the statistic is as an estimator of the
parameter.[from http://davidmlane.com/hyperstat/A12977.html]) than the
mean for normal distributions.

Trimmed means are often used in Olympic scoring to minimize the
effects of extreme ratings possibly caused by biased judges. [from
http://davidmlane.com/hyperstat/A11971.html]

For a vector or matrix **x** , **t=trimmean(x,discard)** returns in
scalar **t** the mean of all the entries of **x** , after discarding
**discard/2** highest values and **discard/2** lowest values.

**t=trimmean(x,discard,'r')** (or, equivalently,
**t=trimmean(x,discard,1)** ) returns in each entry of the row vector
**t** the trimmed mean of each column of **x** .

**t=trimmean(x,discard,'c')** (or, equivalently,
**t=trimmean(x,discard,2)** ) returns in each entry of the column
vector **t** the trimmed mean of each row of **x** .

This function computes the trimmed mean of a vector or matrix ** x** .

For a vector or matrix ** x** , ** m=trimmean(x) ** returns in scalar
** m** the trimmedmean of all the entries of ** x** .

** m=trimmean(x,'r') ** (or, equivalently, ** m=trimmean(x,1) ** )
returns in each entry of the row vector ** m** the trimmed mean of
each column of ** x** .

q ** m=trimmean(x,'c') ** (or, equivalently, ** m=trimmean(x,2) ** )
returns in each entry of the column vector ** m** the trimmed mean of
each row of ** x** .



References
~~~~~~~~~~

Luis Angel Garcia-Escudero and Alfonso Gordaliza, Robustness
Properties of Means and Trimmed Means, JASA, Volume 94, Number 447,
Sept 1999, pp956-969



Author
~~~~~~

Carlos Klimann



