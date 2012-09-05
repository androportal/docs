


toeplitz (Matlab function)
==========================

Toeplitz matrix



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `toeplitz`_



::

    `toeplitz`_




Particular cases
~~~~~~~~~~~~~~~~

**toeplitz** can be used with empty matrices in Scilab but not in
Matlab.

:T=toeplitz(c) If **c** is complex, use **mtlb_toeplitz** in Scilab to
  have the same result than Matlab. Else if **c** is not a scalar or a
  vector, use **mtlb_toeplitz** in Scilab to have the same result than
  Matlab.
: :T=toeplitz(c,r) If **c** and **r** are not scalars or vectors or if
  **c(1,1)<>r(1,1)**, use: **mtlb_toeplitz** in Scilab to have the same
  result than Matlab.
:



