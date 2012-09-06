


max (Matlab function)
=====================

Maximum



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `max`_



::

    `max`_




Particular cases
~~~~~~~~~~~~~~~~

Matlab **max** function can work with complexes, what Scilab **max**
can not, so a emulation function called **mtlb_max** has been written.

Note that in Scilab, second input parameter can give the dimension to
use to find the maximum values or another matrix (maximum of two
matrices), in Matlab, dimension parameter is given in a third input
parameter (in this case, second parameter must be **[]**).

:C=max(A) If **A** is a matrix, **max(A)** is equivalent to
  **max(A,[],1)** in Matlab whereas in Scilab **max(A)** gives the
  maximum value found in **A**. Matlab **max** treats the values along
  the first non-singleton dimension.
:



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    A = [1,2,3;4,5,6]
    C = `max`_(A)
    C = [4,5,6]
    C = `max`_(A,[],1)
    C = [4,5,6]
    B = [7,8,9;2,3,4]
    C = `max`_(A,B)
    C = [7,8,9;4,5,6]



::

    A = [1,2,3;4,5,6]
    C = `max`_(A)
    C = 6
    C = `max`_(A,"r")
    C = [4,5,6]
    B = [7,8,9;2,3,4]
    C = `max`_(A,B)
    C = [7,8,9;4,5,6]




