


min (Matlab function)
=====================

Minimum



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `min`_



::

    `min`_




Particular cases
~~~~~~~~~~~~~~~~

Matlab **min** function can work with complexes, what Scilab **min**
can not, so a emulation function called **mtlb_min** has been written.

Note that in Scilab, second input parameter can give the dimension to
use to find the minimum values or another matrix (minimum of two
matrices), in Matlab, dimension parameter is given in a third input
parameter (in this case, second parameter must be **[])**.

:C=min(A) If **A** is a matrix, **min(A)** is equivalent to
  **min(A,[],1)** in Matlab whereas in Scilab **min(A)** gives the
  minimum value found in **A**. Matlab **min** treats the values along
  the first non-singleton dimension.
:



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    A = [1,2,3;4,5,6]
    C = `min`_(A)
    C = [1,2,3]
    C = `min`_(A,[],1)
    C = [1,2,3]
    B = [7,8,9;2,3,4]
    C = `min`_(A,B)
    C = [1,2,3;2,3,4]



::

    A = [1,2,3;4,5,6]
    C = `min`_(A)
    C = 1
    C = `min`_(A,"r")
    C = [1,2,3]
    B = [7,8,9;2,3,4]
    C = `min`_(A,B)
    C = [1,2,3;2,3,4]




