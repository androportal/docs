


isspace (Matlab function)
=========================

Detect elements that are ASCII white spaces



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    isspace



::

    No equivalent




Particular cases
~~~~~~~~~~~~~~~~

There is no equivalent function to Matlab **isspace** function in
Scilab. However it can be replaced as shown below.



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    tf = isspace(A)



::

    // If A is a String matrix:
    tf = `asciimat`_(A)==32
    // If A is not a String matrix:
    tf = `zeros`_(A)




