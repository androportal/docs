====
"sample"
====

Scilab Function Last update : 14/10/2003
**sample** - Sampling with replacement



Calling Sequence
~~~~~~~~~~~~~~~~

s = sample(n,X,orient)




Parameters
~~~~~~~~~~


+ **n** : positive integer (size of sample)
+ **X** : matrix. Samples will be extracted from this matrix.
+ **orient** : Optional parameter. Admissible values are 1, 2, 'r' or
  'c'
+ **s** : vector or matrix containing sample




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

` **samplef** `_,` **samwr** `_,



Author
~~~~~~

Carlos Klimann

.. _
      : ://./statistics/samplef.htm
.. _
      : ://./statistics/samwr.htm


