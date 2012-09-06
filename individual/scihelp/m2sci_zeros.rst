


zeros (Matlab function)
=======================

Create an array of all zeros



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `zeros`_



::

    `zeros`_




Particular cases
~~~~~~~~~~~~~~~~

:B=zeros(A) If **A** is a scalar, then Matlab returns a **A*A** matrix
  of zeros but in Scilab you get a **1**, use **zeros(A,A)** to get the
  same matrix **B**. If **A** is a row vector, Scilab and Matlab give
  the same **B**. Finally, if **A** is a matrix, in Scilab, **B** will
  be a matrix having the same size as **A** whereas in Matlab, you get
  an error message.
:

Note that in Matlab, **A** can contain complex values (in these cases,
only real part of **A** is taken in account), what Scilab function do
not tolerate.



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    B = `zeros`_(2)
    B = [0,;0,0]
    B = `zeros`_(2,2)
    B = [0,0;0,0]
    B = `zeros`_([3,3])
    B = [0,0,0;0,0,0;0,0,0]



::

    B = `zeros`_(2)
    B = 0
    B = `zeros`_(2,2)
    B = [0,0;0,0]
    B = `zeros`_([3,3])
    B = [0,0]




