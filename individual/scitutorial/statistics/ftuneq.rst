====
"ftuneq"
====

Last update : July 2000
**ftuneq** - Fischer ratio for samples of unequal size.



Calling Sequence
~~~~~~~~~~~~~~~~

f=ftuneq(sample1[,sample2[,sample3]...]])
[f,p]=ftuneq(sample1[,sample2[,sample3]...]])




Parameters
~~~~~~~~~~


+ **sample1, sample2, sample3,... ** : real or complex matrix of any
  type




Description
~~~~~~~~~~~

This function computes the F ratio for samples of unequal size.

"The most efficient design is to make all samples the same size n.
However when this is nor feasible, it still is possible to modify the
ANOVA calculations." Note that the definition of xbarbar is no longer
mean(xbar), but rather a weighted average with weights ni.
Additionnally it gives (in p) the p-value of the computed Fischer
ratio.

Given a number a of samples each of them composed of n_i (i from 1 to
a) observations this fonction computes in f the Fischer ratio (it is
the ratio between nr times the variance of the means of samples and
the mean of the variances of each sample).

** f=ftest(samples) ** computes the Fischer ratio of the nc samples
whose values are in the columns of the matrix **samples** . Each one
of these samples is composed of nr values. (The Fischer ratio is the
ratio between nr times the variance of the means of samples and the
mean of variances of each sample)

** [f,p]=ftest(samples) ** gives in p the p-value of the computed
Fischer ratio f.



References
~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, J.Wiley &
Sons, 1990.



Examples
~~~~~~~~


::

    
    
    samples=[46 55 54;53 54 50; 49 58 51;50 61 51;46 52 49]
    [f,p]=ftest(samples)
     
      




See Also
~~~~~~~~

` **ftuneq** `_,



Author
~~~~~~

Carlos Klimann

.. _
      : ://./statistics/ftuneq.htm


