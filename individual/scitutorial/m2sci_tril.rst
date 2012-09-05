


tril (Matlab function)
======================

Lower triangular part of a matrix



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `tril`_



::

    `tril`_




Particular cases
~~~~~~~~~~~~~~~~

In **L=tril(X)** and **L=tril(X,k)**, Scilab function gives different
results from Matlab one if **X** is a String matrix. In this case use
**mtlb_tril** instead.

Note that **k** can be complex in Matlab, in this case, only real part
of **k** is taken in account, Scilab gives an error message for a such
use.



