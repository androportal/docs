


size (Matlab function)
======================

Array dimension



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `size`_



::

    `size`_




Particular cases
~~~~~~~~~~~~~~~~

Due to the fact that strings or not considered in the same way in
Matlab and in Scilab, results are not equal for string matrices,
convert it using **m2scistr** to have the same result.

:d = size(X,dim) If **dim** is greater than number of dimensions of
  **X**, Matlab returns **d=1**, but in Scilab, you get an error
  message. Scilab **mtlb_size** can work with **dim** greater than
  number of dimensions of **X**.
: :[d1,...dn] = size(X) If **n** is greater than number of dimensions
  of **X**, all "extra" variables are set to **1** in Matlab but Scilab
  returns an error message. Scilab **mtlb_size** returns a Matlab like
  result in these cases. When **n** is less than number of dimensions of
  **X**, **dn** contains the product of the sizes of the remaining
  dimensions in Matlab but in Scilab **dn = size(X,n)**, use
  **mtlb_size** for such uses.
:



