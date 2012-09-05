


isvector (Matlab function)
==========================

Determine if input is a vector



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `isvector`_



::

    No equivalent




Particular cases
~~~~~~~~~~~~~~~~

There is no Scilab equivalent function for Matlab **tf=isvector(A)**
but there are equivalent instructions:

:If A is not a character string: Scilab equivalent is **tf =
  size(A,1)==1 | size(A,2)==1**.
: :If A is a character string: Scilab equivalent is **tf =
  size(asciimat(A),1)==1 | size(asciimat(A),2)==1**.
:



