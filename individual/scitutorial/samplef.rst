


samplef
=======

sample with replacement from a population and frequences of his
values.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    s = samplef(n,X,f,orient)




Arguments
~~~~~~~~~

:n positive integer (size of sample)
: :X matrix. Samples will be extracted from this matrix
: :f positive integer matrix with same type than X. It indicates
  frequences of corresponding values of X.
: :orient Optional parameter. Admissible values are 1, 2, 'r' or 'c'
: :s vector or matrix containing sample
:



Description
~~~~~~~~~~~

This function gives s, a vector of length n. It contains a sample of n
extractions, with replacement, from the vector (or matrix) X, each
element counted with the frequence given by the corresponding value in
vector f.

s=samplef(n,X,f) (or s=samplef(n,X,f,'*')) returns a vector s whose
values are a random sample of n values from X, each value with a
probability to be sampled proportional to the corresponding value of
f, extracted with replacement, from X. f must have same length than X.

s=samplef(n,X,f,'r') (or, equivalently, s=samplef(n,X,f,1)) returns a
matrix of type size(X,'r')xn. It contains a random sample of n rows
from X, each row with a probability to be sampled proportional to the
corresponding value of f, extracted with replacement, from the rows of
X. The length of f must be equal to the number of rows of X.

s=samplef(n,X,f,'c') (or, equivalently, s=samplef(n,X,f,2)) returns a
matrix of type nxsize(X,'c'). It contains a random sample of n columns
from X, each column with a probability to be sampled proportional to
the corresponding value of f, extracted with replacement, from the
columns of X. The length of f must be equal to the number of columns
of X.



Examples
~~~~~~~~


::

    a=[3 7 9;22 4 2]
    f1=[10 1 1 1 1 1]
    f2=[1 ; 15]
    f3=[10 1 1]
    s=samplef(15,a,f1)
    s=samplef(15,a,f2,'r')
    s=samplef(15,a,f3,'c')




See Also
~~~~~~~~


+ `sample`_ Sampling with replacement
+ `samwr`_ Sampling without replacement


.. _sample: sample.html
.. _samwr: samwr.html


