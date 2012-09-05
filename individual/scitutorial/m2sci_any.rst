


any (Matlab function)
=====================

Test to determine if any nonzeros elements



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    any



::

    `or`_




Particular cases
~~~~~~~~~~~~~~~~

Matlab **any** function can work with complexes, what Scilab **or**
can not, so a call to **abs** function can be necessary when
translating from Matlab to Scilab.

:Matlab expression **B=any(A)** translated into Scilab by **B=or(A)**:
  If **A** is a matrix, **any(A)** is equivalent to **any(A,1)** in
  Matlab whereas in Scilab **or(A)** is a logical OR of all elements of
  **A**. If **A** is a multidimensional array then Matlab treats the
  values along the first non-singleton dimension, but Scilab returns
  logical OR of all elements of **A**.
: :Matlab expression **B=any(A,dim)** translated into Scilab by
  **B=or(A,dim)**: In Scilab **dim=1** is equivalent to **dim="r"** and
  **dim=2** is equivalent to **dim="c"**. In Matlab, **dim** can be
  greater then the number of dimension of **A** (in this case, **B=A**),
  in Scilab you will get an error message.
:



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    y = any([1,1,0;1,0,1])
    y = [1,1,1]
    y = any([1,1,0;1,0,1],1)
    y = [1,1,1]



::

    y = `or`_([1,1,0;1,0,1])
    y = %T
    y = `or`_([1,1,0;1,0,1],1)
    y = [%T,%T,%T]




