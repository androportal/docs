


all (Matlab function)
=====================

Test to determine if all elements are nonzero



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    all



::

    `and`_




Particular cases
~~~~~~~~~~~~~~~~

Matlab **all** function can work with complexes, what Scilab **and**
can not, so a call to **abs** function can be necessary when
translating from Matlab to Scilab.

:The Matlab expression **B=all(A)** is translated into Scilab by
  **B=and(A)**: If **A** is a matrix, **all(A)** is equivalent to
  **all(A,1)** in Matlab whereas in Scilab **and(A)** is a logical AND
  of all elements of **A**. If **A** is a multidimensional array then
  Matlab treats the values along the first non-singleton dimension, but
  Scilab returns logical AND of all elements of **A**.
: :The Matlab expression *B=all(A,dim)* is translated into Scilab by
  *B=and(A,dim)*: In Scilab **dim=1** is equivalent to **dim="r"** and
  **dim=2** is equivalent to **dim="c"**. In Matlab, **dim** can be
  greater then the number of dimension of **A** (in this case, **B=A**),
  in Scilab you will get an error message.
:



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    y = all([1,1,0;1,0,1])
    y = [1,0,0]
    y = all([1,1,0;1,0,1],1)
    y = [1,0,0]



::

    y = `and`_([1,1,0;1,0,1])
    y = %F
    y = `and`_([1,1,0;1,0,1],1)
    y = [%T,%F,%F]




