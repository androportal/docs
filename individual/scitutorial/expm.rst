


expm
====

square matrix exponential



Calling Sequence
~~~~~~~~~~~~~~~~


::

    expm(X)




Arguments
~~~~~~~~~

:X square matrix with real or complex entries.
:



Description
~~~~~~~~~~~

`X` is a square matrix `expm(X)` is the matrix

`expm(X) = I + X + X^2 /2 + ...`

The computation is performed by first block-diagonalizing `X` and then
applying a Pade approximation on each block.



Examples
~~~~~~~~


::

    X=[1 2;3 4]
    expm(X)
    `logm`_(expm(X))




See Also
~~~~~~~~


+ `logm`_ square matrix logarithm
+ `bdiag`_ block diagonalization, generalized eigenvectors
+ `coff`_ resolvent (cofactor method)
+ `log`_ natural logarithm
+ `exp`_ element-wise exponential


.. _coff: coff.html
.. _log: log.html
.. _bdiag: bdiag.html
.. _logm: logm.html
.. _exp: exp.html


