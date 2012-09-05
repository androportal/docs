


balance (Matlab function)
=========================

Diagonal scaling to improve eigenvalue accuracy



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    balance



::

    `balanc`_




Particular cases
~~~~~~~~~~~~~~~~

There is no equivalent for **B=balance(A)** in Scilab, **balanc**
function does not work with only one output value.

When used with two outputs, these functions return value in inverse
order.



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    [T,Ab] = balance(A)



::

    [Ab,T] = `balanc`_(A)




