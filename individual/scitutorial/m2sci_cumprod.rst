


cumprod (Matlab function)
=========================

Cumulative product



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `cumprod`_



::

    `cumprod`_




Particular cases
~~~~~~~~~~~~~~~~

:C = cumprod(A) If **A** is a matrix, **cumprod(A)** is equivalent to
  **cumprod(A,1)** in Matlab whereas in Scilab **cumprod(A)** gives the
  cumulative product of all the entries of **A** taken columnwise.
  Actually, Matlab works on the first non-singleton dimension and Scilab
  does not.
: :C = cumprod(A,dim) Matlab can work with dim greater than number of
  dimensions of **A** but Scilab can not, in this can use
  **mtlb_cumprod** instead.
:



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    B = `cumprod`_([1,2,3;4,5,6])
    B = [1,2,3;4,10,18]
    B = `cumprod`_([1,2,3;4,5,6],1)
    B = [1,2,3;4,10,18]



::

    B = `cumprod`_([1,2,3;4,5,6])
    B = [1,8,120;4,40,720]
    B = `cumprod`_([1,2,3;4,5,6],1)
    B = [1,2,3;4,10,18]




