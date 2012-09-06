


isfield (Matlab function)
=========================

Determine if input is a structure array field



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `isfield`_



::

    No equivalent




Particular cases
~~~~~~~~~~~~~~~~

There is no Scilab equivalent function for Matlab
**tf=isfield(A,field)** but there are equivalent instructions:

:If A is not a structure and/or field is not a character string:
  Scilab equivalent is **%F**.
: :If A is a structure and field is a character string: Scilab
  equivalent is
  **allfields=getfield(1,A);tf=or(allfields(3:$)==field);**.
:



