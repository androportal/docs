


int16 (Matlab function)
=======================

Convert to 16-bit signed integer



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `int16`_



::

    `int16`_




Particular cases
~~~~~~~~~~~~~~~~

For infinite and NaNs values, Scilab and Matlab **int16** return
different values.



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    A = `int16`_(inf)
    A = 32767
    A = `int16`_(-inf)
    A = -32768
    A = `int16`_(nan)
    A = 0



::

    A = `int16`_(%inf)
    A = -32768
    A = `int16`_(-%inf)
    A = -32768
    A = `int16`_(%nan)
    A = -32768




