====
"ftest"
====

Last update : July 2000
**ftest** - Fischer ratio



Calling Sequence
~~~~~~~~~~~~~~~~

f=ftest(samples)
[f,p]=ftest(samples)




Parameters
~~~~~~~~~~


+ **samples** : real or complex matrix of type nr X nc




Description
~~~~~~~~~~~

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

    
    
    samples=[46 55 54;
             53 54 50; 
             49 58 51;
             50 61 51;
             46 52 49]
    [f,p]=ftest(samples)
     
      




See Also
~~~~~~~~

` **ftuneq** `_,



Author
~~~~~~

Carlos Klimann

.. _
      : ://./statistics/ftuneq.htm


