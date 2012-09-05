


diag (Matlab function)
======================

Diagonal including or extracting



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `diag`_



::

    `diag`_




Particular cases
~~~~~~~~~~~~~~~~

Due to the fact that strings or not considered in the same way in
Matlab and in Scilab, results are not equal if **A** is a string
matrix or vector in **diag(A)** or **diag(A,k)**.

Note that **mtlb_diag** can emulate this particularity in Scilab.



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    B = `diag`_('str')
    B = ['s  ';' t ';'  r']



::

    B = `diag`_("str")
    B = "str"
    B = `mtlb_diag`_("str")
    B = ["s  ";" t ";"  r"]




