


int32 (Matlab function)
=======================

Convert to 32-bit signed integer



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `int32`_



::

    `int32`_




Particular cases
~~~~~~~~~~~~~~~~

For infinite and NaNs values, Scilab and Matlab **int32** return
different values.



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    A = `int32`_(inf)
    A = 2147483647
    A = `int32`_(-inf)
    A = -2147483648
    A = `int32`_(nan)
    A = 0



::

    A = `int32`_(%inf)
    A = -2147483648
    A = `int32`_(-%inf)
    A = -2147483648
    A = `int32`_(%nan)
    A = -2147483648




