


isletter (Matlab function)
==========================

True for letters of the alphabet



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `isletter`_



::

    No equivalent




Particular cases
~~~~~~~~~~~~~~~~

There is no equivalent function to Matlab **isletter** function in
Scilab. However it can be replaced as follows. Using **mtlb_isletter**
will give a prettier code.



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    tf = `isletter`_(A)



::

    // If A is a String matrix:
    tf = ((`asciimat`_(A)>=65) & (`asciimat`_(A)<=90)) | ((`asciimat`_(A)>=97) & (`asciimat`_(A)<=122))
    // If A is not a String matrix:
    tf = `zeros`_(A)




