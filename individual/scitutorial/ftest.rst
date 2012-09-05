


ftest
=====

Fisher ratio



Calling Sequence
~~~~~~~~~~~~~~~~


::

    f=ftest(samples)
    [f,p]=ftest(samples)




Arguments
~~~~~~~~~

:samples real or complex matrix of type nr X nc
:



Description
~~~~~~~~~~~

`f=ftest(samples)` computes the Fisher ratio of the nc samples whose
values are in the columns of the matrix `samples`. Each one of these
samples is composed of nr values. (The Fisher ratio is the ratio
between nr times the variance of the means of samples and the mean of
variances of each sample)

`[f,p]=ftest(samples)` gives in p the p-value of the computed Fisher
ratio f.



References
~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, J.Wiley &
Sons, 1990.



Examples
~~~~~~~~


::

    samples=[46 55 54;
             53 54 50; 
             49 58 51;
             50 61 51;
             46 52 49]
    [f,p]=ftest(samples)




See Also
~~~~~~~~


+ `ftuneq`_ Fisher ratio for samples of unequal size.


.. _ftuneq: ftuneq.html


