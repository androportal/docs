====
"expm"
====

Scilab Function Last update : 16/12/2004
**expm** - square matrix exponential



Calling Sequence
~~~~~~~~~~~~~~~~

expm(X)




Parameters
~~~~~~~~~~


+ **X** : square matrix with real or complex entries.




Description
~~~~~~~~~~~

**X** is a square matrix **expm(X)** is the matrix

**expm(X) = I + X + X^2 /2 + ...**

The computation is performed by first block-diagonalizing **X** and
then applying a Pade approximation on each block.



Examples
~~~~~~~~


::

    
    
    X=[1 2;3 4]
    expm(X)
    logm(expm(X))    
     
      




See Also
~~~~~~~~

` **logm** `_,` **bdiag** `_,` **coff** `_,` **log** `_,` **exp** `_,

.. _
      : ://./linear/../elementary/logm.htm
.. _
      : ://./linear/coff.htm
.. _
      : ://./linear/bdiag.htm
.. _
      : ://./linear/../elementary/log.htm
.. _
      : ://./linear/exp.htm


