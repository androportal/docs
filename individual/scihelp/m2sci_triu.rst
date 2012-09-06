


triu (Matlab function)
======================

Upper triangular part of a matrix



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `triu`_



::

    `triu`_




Particular cases
~~~~~~~~~~~~~~~~

In **U=triu(X)** and **U=triu(X,k)**, Scilab function gives different
results from Matlab one if **X** is a String matrix. In this case use
**mtlb_triu** instead.

Note that **k** can be complex in Matlab, in this case, only real part
of **k** is taken in account, Scilab gives an error message for a such
use.



