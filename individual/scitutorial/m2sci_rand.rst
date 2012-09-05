


rand (Matlab function)
======================

Uniformly distributed random numbers and arrays



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `rand`_(A)



::

    `rand`_(A[,"uniform"])




Particular cases
~~~~~~~~~~~~~~~~

:B=rand(A) If **A** is a scalar, then Matlab returns a **A*A** random
  matrix but in Scilab you get a single random value, use **rand(A,A)**
  to get the same matrix **B**. Finally, if **A** is a matrix, in
  Scilab, **B** will be a matrix having the same size as **A** whereas
  in Matlab, you get an error message.
:

Note that in Matlab, **A** can contain complex values (in these cases,
only real part of **A** is taken in account), what Scilab function do
not tolerate.

Particular case: To get the state of the uniform generator, in Matlab
you have to use **s=rand('state')** to get 35 current values of the
generator, but Scilab equivalent **s=rand("seed")** return only one
value.



