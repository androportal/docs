


clock (Matlab function)
=======================

Current time as a date vector



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~
**Matlab** **Scilab**

::

    `clock`_



::

    No equivalent




Particular cases
~~~~~~~~~~~~~~~~

Even if there no equivalent for Matlab **clock** in Scilab, it can be
emuled as shown in example.



Examples
~~~~~~~~
**Matlab** **Scilab**

::

    c = `clock`_



::

    w = `getdate`_();
    w(3:5) = [];
    w(6) = w(6)+w(7)/1000;
    c = w(1:6);




