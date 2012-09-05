


diff (Matlab function)
======================

Differences and approximate derivatives



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `diff`_



::

    `diff`_




Particular cases
~~~~~~~~~~~~~~~~

:Y = diff(X[,n]) For this kind of use of **diff** (dim parameter not
  given), Matlab works on the first non-singleton dimension of **X**
  what Scilab does not. In this case, Scilab considers dim to be **"*"**
  so that diff threats all values of **X**, what Matlab does not.
: :Y = diff(X,n,dim) If dimension given by **dim** reaches 1 before
  **n** iterations have been done, Matlab switches to next non-singleton
  dimension, but Scilab does not, use **mtlb_diff** to get equivalent
  results.
:

When **n** is greater than all existing dimensions of **X**, Matlab
returns **[]** what Scilab may not give for all inputs.



