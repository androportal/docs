


eye (Matlab function)
=====================

Identity matrix



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `eye`_



::

    `eye`_




Particular cases
~~~~~~~~~~~~~~~~

Note that in Matlab, **A** can contain complex values (in these cases,
only real part of **A** is taken in account), what Scilab function do
not tolerate.

:B=eye(A) If A is a scalar, then Matlab returns a **A*A** identity
  matrix but in Scilab you get a **1**, use **eye(A,A)** to get the same
  matrix **B**. If **A** is a vector, Scilab and Matlab give the same
  **B**. Finally, if **A** is a matrix, in Scilab, **B** will be a
  matrix having the same size as **A** whereas in Matlab, you get an
  error message.
:



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    B = `eye`_(2)
    B = [1,0;0,1]
    B = `eye`_(2,2)
    B = [1,0;0,1]
    B = `eye`_([3,3])
    B = [1,0,0;0,1,0;0,0,1]



::

    B = `eye`_(2)
    B = 1
    B = `eye`_(2,2)
    B = [1,0;0,1]
    B = `eye`_([3,3])
    B = [1,0]




