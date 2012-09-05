


nand2mean
=========

difference of the means of two independent samples



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [dif]=nand2mean(sample1,sample2)
    [dif]=nand2mean(sample1,sample2,conf)




Arguments
~~~~~~~~~

:sample1 real or complex vector or matrix
: :sample2 real or complex vector or matrix
: :conf real scalar between 0 and 1
:



Description
~~~~~~~~~~~

This function computes an estimate (dif(1)) for the difference of the
means of two independent samples (arrays sample1 and sample2) and
gives the half amplitude of the range of variability of dif with an
indicated confidence level (dif(2)). The choice of the normal or t
fonctions as the probability fonction depends on the sizes of sample1
and sample2. We suppose that the underlying variances of both
populations are equal. NAN values are not counted.

In Labostat, NAN values stand for missing values in tables.

In absence of the confidence parameter a confidence level of 95% is
assumed.



References
~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, 5th edition,
J.Wiley & Sons, 1990.



