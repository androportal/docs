


int8 (Matlab function)
======================

Convert to 8-bit signed integer



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `int8`_



::

    `int8`_




Particular cases
~~~~~~~~~~~~~~~~

For infinite values, Scilab and Matlab **int8** return different
values.



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    A = `int8`_(inf)
    A = 127
    A = `int8`_(-inf)
    A = -128



::

    A = `int8`_(%inf)
    A = 0
    A = `int8`_(-%inf)
    A = 0




