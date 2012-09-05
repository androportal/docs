


find (Matlab function)
======================

Find indices and values of nonzero elements



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `find`_



::

    `find`_




Particular cases
~~~~~~~~~~~~~~~~

Matlab function can work with complex values what is not possible in
Scilab, however, using **abs** it is very easy to have the same
results.

Note that Scilab function can only return two output values and Matlab
one can return a third value that can be computed according to the
first two output matrices as explained in Matlab help.

For example, in **[i,j,v]=find(X)**, **v** is equal to:
**X(i+(j-1))*size(X,1)**.

Another great difference between Scilab and Matlab is that Matlab
returns column vectors of indices when X is a column vector or a
matrix but Scilab always returns row vectors. For this kind of input,
use matrix to get the same output value...what is done mtlb_find()



