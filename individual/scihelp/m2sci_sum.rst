


sum (Matlab function)
=====================

Sum of array elements



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `sum`_



::

    `sum`_




Particular cases
~~~~~~~~~~~~~~~~

:M=sum(A) Scilab **sum(A)** returns the sum of all components of
  **A**. So, if **A** is a vector, then Scilab and Matlab work in the
  same way. If **A** is a matrix, Scilab **sum(A)** gives the sum of all
  elements of **A** but Matlab returns the sum of each column. Finally,
  if **A** is a multidimensional array, Matlab works on the first non-
  singleton dimension of **A** what Scilab does not. So, to be sure to
  find a Scilab equivalent for Matlab call to **sum** it is better to
  precise dimension on which to work.
: :M=sum(A,dim) In Scilab **dim=1** is equivalent to **dim="r"** and
  **dim=2** is equivalent **dim="c"**. In Matlab, dim can be greater
  then the number of dimension of **A** (in this case, **M=A**), in
  Scilab you will get an error message.
:



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    A = [1,2,3;4,5,6]
    M = `sum`_(A)
    M = [5,7,9]
    M = `sum`_(A,1)
    M = [5,7,9]



::

    A = [1,2,3;4,5,6]
    M = `sum`_(A)
    M = 21
    M = `sum`_(A,"r")
    M = [5,7,9]




