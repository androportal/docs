


logm
====

square matrix logarithm



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=logm(x)




Arguments
~~~~~~~~~

:x square matrix
:



Description
~~~~~~~~~~~

`logm(x)` is the matrix logarithm of `x`. The result is complex if `x`
is not positive or definite positive. If `x` is a symmetric matrix,
then calculation is made by Schur form. Otherwise, `x` is assumed
diagonalizable. One has `expm(logm(x))=x`.



Examples
~~~~~~~~


::

    A=[1,2;3,4];
    logm(A)
    `expm`_(logm(A))
    
    A1=A*A';
    logm(A1)
    `expm`_(logm(A1))
    
    A1(1,1)=%i;
    `expm`_(logm(A1))




See Also
~~~~~~~~


+ `expm`_ square matrix exponential
+ `log`_ natural logarithm


.. _expm: expm.html
.. _log: log.html


