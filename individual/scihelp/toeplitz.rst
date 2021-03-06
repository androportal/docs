


toeplitz
========

Toeplitz matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    A=toeplitz(c [,r])




Arguments
~~~~~~~~~

:a,c,r constant, polynomial or string matrices
:



Description
~~~~~~~~~~~

`A=toeplitz(c [,r])` returns the Toeplitz matrix whose first row is
`r` and first column is `c`. `c(1)` must be equal to `r(1)`.
`toeplitz(c)` returns the symmetric Toeplitz matrix.



Examples
~~~~~~~~


::

    A=toeplitz(1:5);
    
    T=toeplitz(1:5,1:2:7);T1=[1 3 5 7;2 1 3 5;3 2 1 3;4 3 2 1;5 4 3 2];
    T-T1
    
    s=`poly`_(0,'s');
    t=toeplitz([s,s+1,s^2,1-s]);
    t1=[s,1+s,s*s,1-s;1+s,s,1+s,s*s;s*s,1+s,s,1+s;1-s,s*s,1+s,s]
    t-t1
    
    t=toeplitz(['1','2','3','4']);
    t1=['1','2','3','4';'2','1','2','3';'3','2','1','2';'4','3','2','1']




See Also
~~~~~~~~


+ `matrix`_ reshape a vector or a matrix to a different size matrix
+ `testmatrix`_ generate special matrices, such as Hilbert, Franck


.. _testmatrix: testmatrix.html
.. _matrix: matrix.html


