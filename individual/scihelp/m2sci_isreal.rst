


isreal (Matlab function)
========================

Determine if all array elements are real numbers



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `isreal`_



::

    `isreal`_




Particular cases
~~~~~~~~~~~~~~~~

Scilab **isreal** function can take two values as input. The first one
is the same as Matlab one and the second allows to give a tolerance on
the absolute value of the imaginary part of first input. So to have
the same results in Matlab and in Scilab, second input in Scilab
function must be set to 0.



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    tf = `isreal`_(1+0i)
    tf = 1



::

    tf = `isreal`_(1+0*%i)
    tf = %F
    tf = `isreal`_(1+0*%i,0)
    tf = %T




