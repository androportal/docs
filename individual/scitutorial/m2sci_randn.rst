


randn (Matlab function)
=======================

Normally distributed random numbers and arrays



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    randn(A)



::

    `rand`_(A,"normal")




Particular cases
~~~~~~~~~~~~~~~~

:The Matlab expression B=randn(A) is translated into Scilab by
  B=rand(A,"normal"): If **A** is a scalar, then Matlab returns a
  **A*A** random matrix but in Scilab you get a single random value, use
  **rand(A,A,"normal")** to get the same matrix **B**. Finally, if **A**
  is a matrix, in Scilab, **B** will be a matrix having the same size as
  **A** whereas in Matlab, you get an error message.
:

Note that in Matlab, **A** can contain complex values (in these cases,
only real part of **A** is taken in account), what Scilab function do
not tolerate.

Particular case: To get the state of the normal generator, in Matlab
you have to use **s=randn('state')** to get 2 current values of the
generator, but Scilab equivalent **s=rand("seed")** return only one
value.



