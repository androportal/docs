


prod (Matlab function)
======================

Product of array elements



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `prod`_



::

    `prod`_




Particular cases
~~~~~~~~~~~~~~~~

:M=prod(A) Scilab **prod(A)** returns the product of all components of
  **A**. So, if **A** is a vector, then Scilab and Matlab work in the
  same way. If **A** is a matrix, Scilab **prod(A)** gives the product
  of all elements of **A** but Matlab returns the product of each
  column. Finally, if **A** is a multidimensional array, Matlab works on
  the first non-singleton dimension of **A** what Scilab does not. So,
  to be sure to find a Scilab equivalent for Matlab call to **prod** it
  is better to precise dimension on which to work.
: :M=prod(A,dim) In Scilab **dim=1** is equivalent to **dim="r"** and
  **dim=2** is equivalent to **dim="c"**. In Matlab, **dim** can be
  greater than the number of dimension of **A** (in this case, **M=A**),
  in Scilab you will get an error message.
:



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    A = [1,2,3;4,5,6]
    M = `prod`_(A)
    M = [4,10,18]
    M = `prod`_(A,1)
    M = [4,10,18]



::

    A = [1,2,3;4,5,6]
    M = `prod`_(A)
    M = 720
    M = `prod`_(A,"r")
    M = [4,10,18]




