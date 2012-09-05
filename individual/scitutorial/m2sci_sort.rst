


sort (Matlab function)
======================

Sort elements in ascending order



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    sort



::

    No equivalent




Particular cases
~~~~~~~~~~~~~~~~

Scilab **sort** and Matlab **sort** are different functions !

For character string inputs, please use better **mtlb_sort** in
Scilab.

:B = sort(A) Scilab **gsort** can be used as an equivalent for Matlab
  **sort** giving it the good inputs. If **A** is a vector, call
  **gsort(A,"g","i")**. If **A** is a matrix then call
  **gsort(A,"r","i")**. Note that **gsort** does not work with
  multidimensional arrays.
: :B = sort(A,dim) If in Matlab, **dim** is **1** (respectively **2**)
  then replace it by **"r"** (respectively **"c"**) in Scilab when
  calling **gsort(A,dim,"i")**. Note that **gsort** does not work with
  multidimensional arrays.
:



