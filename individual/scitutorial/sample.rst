


sample
======

Sampling with replacement



Calling Sequence
~~~~~~~~~~~~~~~~


::

    s = sample(n,X,orient)




Arguments
~~~~~~~~~

:n positive integer (size of sample)
: :X matrix. Samples will be extracted from this matrix.
: :orient Optional parameter. Admissible values are 1, 2, 'r' or 'c'
: :s vector or matrix containing sample
:



Description
~~~~~~~~~~~

This function gives a vector (or matrix) nx1. It contains a random
sample of n extractions, with replacement, from the matrix X.

s=sample(n,X) (or s=sample(n,X,'*')) returns a vector s whose values
are a random sample of n values from X, extracted with replacement,
from X .

s=sample(n,X,'r') (or, equivalently, s=sample(n,X,1)) returns a matrix
of type size(X,'r')xn. It contains a random sample of n rows,
extracted with replacement, from the rows of X.

s=sample(n,X,'c') (or, equivalently, s=sample(n,X,2)) returns a matrix
of type nxsize(X,'c'). It contains a random sample of n columns,
extracted with replacement from the columns of X.



Examples
~~~~~~~~


::

    X=['a' 'dd' 'arreu'; 'ber' 'car' 'zon']
    s=sample(25,X)
    s=sample(25,X,'r')
    s=sample(25,X,'c')




See Also
~~~~~~~~


+ `samplef`_ sample with replacement from a population and frequences
  of his values.
+ `samwr`_ Sampling without replacement


.. _samplef: samplef.html
.. _samwr: samwr.html


