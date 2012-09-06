


cumsum (Matlab function)
========================

Cumulative sum



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `cumsum`_



::

    `cumsum`_




Particular cases
~~~~~~~~~~~~~~~~

:C=cumsum(A) If A is a matrix, **cumsum(A)** is equivalent to
  **cumsum(A,1)** in Matlab whereas in Scilab **cumsum(A)** gives the
  cumulative sum of all the entries of **A** taken columnwise. Actually,
  Matlab works on the first non-singleton dimension and Scilab does not.
: :C = cumsum(A,dim) Matlab can work with dim greater than number of
  dimensions of **A** but Scilab can not, in this can use
  **mtlb_cumsum** instead.
:



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    B = `cumsum`_([1,2,3;4,5,6])
    B=[1,2,3;5,7,9]
    B = `cumsum`_([1,2,3;4,5,6],1)
    B=[1,2,3;5,7,9]



::

    B = `cumsum`_([1,2,3;4,5,6])
    B=[1,7,15;5,12,21]
    B = `cumsum`_([1,2,3;4,5,6],1)
    B=[1,2,3;5,7,9]




